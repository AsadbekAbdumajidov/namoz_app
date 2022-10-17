import 'package:flutter/material.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:namoz_najotdir/core/services/service_islam.dart';
import 'package:namoz_najotdir/core/services/service_modul_add.dart';
import 'package:namoz_najotdir/core/services/service_notification.dart';

class NamozVaqtiBuilder extends StatefulWidget {
  final String? title;
  const NamozVaqtiBuilder({Key? key, this.title}) : super(key: key);
  @override
  State<NamozVaqtiBuilder> createState() => _NamozVaqtiBuilderState();
}

class _NamozVaqtiBuilderState extends State<NamozVaqtiBuilder> {
  @override
  void initState() {
    Notifications.init(initScheduled: true);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder<Box>(
      valueListenable: Hive.box("myBoolean").listenable(),
      builder: (context, box, __) {
        return GridView.builder(
          padding:  EdgeInsets.only(top: MediaQuery.of(context).size.height * 0.01),
          scrollDirection: Axis.vertical,
          physics: const BouncingScrollPhysics(),
          itemCount: 9,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            mainAxisExtent: MediaQuery.of(context).size.height * 0.1,
            crossAxisCount: 1,
          ),
          itemBuilder: (_, __) => Padding(
            padding: EdgeInsets.symmetric(horizontal: MediaQuery.of(context).size.height * 0.02),
            child: Container(
              margin:  EdgeInsets.symmetric(vertical: MediaQuery.of(context).size.height * 0.01),
              decoration: BoxDecoration(
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    spreadRadius: 2,
                    blurRadius: 7,
                    offset: const Offset(0, 5),
                  ),
                ],
                borderRadius: const BorderRadius.all(
                  Radius.circular(20),
                ),
              ),
              child: Padding(
                padding:  EdgeInsets.symmetric(horizontal: MediaQuery.of(context).size.width * 0.035),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      ServiceModul.times[__][0].toString(),
                      style: const TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 22),
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width * 0.31,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Text(
                            ServiceModul.times[__][1]
                                .toString()
                                .substring(0, 5),
                            style: const TextStyle(
                                color: Color.fromRGBO(12, 114, 100, 1),
                                fontWeight: FontWeight.bold,
                                fontSize: 20),
                          ),
                          const Icon(Icons.arrow_right),
                          InkWell(
                            onTap: () {
                              ifels(__);
                            },
                            child: Icon(
                              Hive.box("myBoolean").values.toList()[__] == true
                                  ? Icons.notifications_none_outlined
                                  : Icons.notifications_off_outlined,
                              size: 38,
                              color: const Color.fromRGBO(12, 114, 100, 1),
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
        );
      },
    );
  }

  showToast(int son, context, index) {
    return Fluttertoast.showToast(
      msg: son == 1
          ? "${ServiceModul.times[index][0]}: vaqti uchun eslatma o'rnatldi ! "
          : "${ServiceModul.times[index][0]}: vaqti uchun eslatma olib tashlandi ! ",
      gravity: ToastGravity.TOP,
      timeInSecForIosWeb: 4,
      backgroundColor: Colors.black,
      textColor: Colors.white,
      fontSize: 25,
    );
  }

  ifels(__) {
    int son = 0;
    int oy = 0;
    if (Hive.box("myBoolean").values.toList()[__] == false) {
      setState(
        () {
          Hive.box("myBoolean").putAt(__, true);
          showToast(1, context, __);

          int hour =
              int.parse(ServiceModul.times[__][1].toString().substring(0, 2));
          int minute =
              int.parse(ServiceModul.times[__][1].toString().substring(3, 5));

          if (DateTime.now().hour >= hour && DateTime.now().minute >= minute) {
            son = 1;
          } else {
            son = 0;
          }

          if (DateTime.now().day ==
              ServiceIslam.datas!.last["date"]["gregorian"]["day"]) {
            oy = 1;
          } else {
            oy = 0;
          }
          Notifications.showNotificationScheduledDailyBasis(
            id: __,
            title: "Namozi vaqti: ${ServiceModul.times[__][0]}",
            body: "Namoz Najotdir dasturidan eslatma !",
            payload: "Namozda najot top",
            scheduledDate: DateTime(
                DateTime.now().year,
                DateTime.now().month + oy,
                DateTime.now().day + son,
                hour,
                minute),
          );
        },
      );
    } else if (Hive.box("myBoolean").values.toList()[__] == true) {
      setState(() {
        FlutterLocalNotificationsPlugin().cancel(__);
        showToast(2, context, __);
        Hive.box("myBoolean").putAt(__, false);
      });
    }
  }
}
