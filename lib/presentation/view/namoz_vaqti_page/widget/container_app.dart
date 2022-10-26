import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:namoz_najotdir/core/data/data.dart';
import 'package:namoz_najotdir/core/services/service_islam.dart';
import 'package:namoz_najotdir/core/services/service_modul_add.dart';
import 'package:namoz_najotdir/core/services/service_notification.dart';

class ForAppContainer extends StatefulWidget {
  const ForAppContainer({Key? key}) : super(key: key);

  @override
  State<ForAppContainer> createState() => _ForAppContainerState();
}

class _ForAppContainerState extends State<ForAppContainer> {
  @override
  void initState() {
    if (Hive.box("check").isEmpty) {
      Hive.box("check").put(0, false);
    }
    if (Hive.box("myBoolean").isEmpty) {
      for (int i = 0; i <= 8; i++) {
        Hive.box("myBoolean").put(i, false);
      }
    }
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder<Box>(
        valueListenable: Hive.box("check").listenable(),
        builder: (context, box, __) {
          return Container(
            height: MediaQuery.of(context).size.height * 0.12,
            width: MediaQuery.of(context).size.width,
            color: const Color.fromRGBO(238, 238, 238, 1),
            child: Padding(
              padding: EdgeInsets.only(
                  top: MediaQuery.of(context).size.height * 0.04),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  InkWell(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: const CircleAvatar(
                      radius: 23,
                      backgroundColor: Colors.white,
                      child: Icon(
                        Icons.arrow_back_ios_new,
                        color: Color.fromRGBO(12, 114, 100, 1),
                        size: 25,
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                        bottom: MediaQuery.of(context).size.height * 0.005),
                    child: Text(
                      Data.boshMenu[0].toString(),
                      style: const TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 25,
                          fontFamily: "Fonts"),
                    ),
                  ),
                  CupertinoSwitch(
                    value: Hive.box("check").values.toList()[0],
                    onChanged: (v) {
                      setState(() {
                        Hive.box("check").putAt(0, v);
                        showToast(Hive.box("check").values.toList()[0]);
                        check(Hive.box("check").values.toList()[0]);
                        notif(v);
                      });
                    },
                    thumbColor: Colors.white,
                    activeColor: const Color.fromRGBO(12, 114, 100, 1),
                    trackColor: Colors.blueGrey.shade400,
                  ),
                ],
              ),
            ),
          );
        });
  }

  showToast(v) {
    return Fluttertoast.showToast(
      msg: v == false
          ? "Barcha eslatmalar olib tashlandi"
          : "Barcha namoz vaqtlari uchun eslatmalar o'rnatildi",
      gravity: ToastGravity.TOP,
      timeInSecForIosWeb: 1,
      backgroundColor: Colors.black,
      textColor: Colors.white,
      fontSize: 25,
    );
  }

  check(v) {
    if (v == false) {
      for (var i = 0; i < Hive.box("myBoolean").values.toList().length; i++) {
        Hive.box("myBoolean").putAt(i, false);
      }
    } else if (v == true) {
      for (var i = 0; i < Hive.box("myBoolean").values.toList().length; i++) {
        Hive.box("myBoolean").putAt(i, true);
      }
    }
  }

  notif(v) {
    int son = 0;
    int oy = 0;
    if (v == false) {
      int sanoq = 0;

      for (int i = 0; i < 8; i++) {
        int hour =
            int.parse(ServiceModul.times[sanoq][1].toString().substring(0, 2));
        int minute =
            int.parse(ServiceModul.times[sanoq][1].toString().substring(3, 5));
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
            id: sanoq,
            title: "Namozi vaqti: ${ServiceModul.times[sanoq][0]}",
            body: "Namoz Najotdir dasturidan eslatma !",
            payload: "Namozda najot top",
            scheduledDate: DateTime(
              DateTime.now().year,
              DateTime.now().month + oy,
              DateTime.now().day + son,
              hour,
              minute,
            ));
        sanoq += 1;
      }
    }
  }

  avtoNotif() {
    Notifications.showNotificationScheduledDailyBasis(
        id: 1,
        title: "Namozi vaqti: ",
        body: "Namoz Najotdir dasturidan eslatma !",
        payload: "Namozda najot top",
        scheduledDate: DateTime.now());
  }
}
