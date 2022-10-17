import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:namoz_najotdir/presentation/view/tasbeh_page/widget/for_app_container.dart';

class Tasbeh extends StatefulWidget {
  const Tasbeh({Key? key}) : super(key: key);

  @override
  State<Tasbeh> createState() => _TasbehState();
}

class _TasbehState extends State<Tasbeh> {
  int sanoq = 0;
  int son = 0;
  @override
  void initState() {
    if (Hive.box("tasbehSanoq").isEmpty) {
      Hive.box("tasbehSanoq").put(0, 0);
    }
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return FadeInUp(
      child: Scaffold(
        body: Column(
          children: [
            ValueListenableBuilder(
                valueListenable: Hive.box("tasbehSanoq").listenable(),
                builder: (context, box, __) {
                  return Stack(
                    children: [
                      Container(
                        height: MediaQuery.of(context).size.height,
                        width: MediaQuery.of(context).size.width,
                        decoration: const BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage("assets/images/tasbeh.gif"),
                                fit: BoxFit.cover)),
                      ),
                      Positioned(
                        top: 0,
                        child: Column(
                          children: [
                            const ForAppCont(),
                            Container(
                              height: MediaQuery.of(context).size.height * 0.13,
                              width: MediaQuery.of(context).size.width,
                              color: Colors.transparent,
                              child: ValueListenableBuilder(
                                valueListenable:
                                    Hive.box("tasbehSanoq").listenable(),
                                builder: (_, box, __) {
                                  return Column(
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    children: [
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceEvenly,
                                        children: [
                                          Text(
                                            sozlar().toString(),
                                            style:  TextStyle(
                                                color: Colors.black,
                                                fontWeight: FontWeight.bold,
                                                fontFamily: 'balo',
                                                fontSize: MediaQuery.of(context).size.height * 0.035),
                                          ),
                                          Text(
                                            arabtilida().toString(),
                                            style: TextStyle(
                                                color: Colors.black,
                                                fontWeight: FontWeight.bold,
                                                fontFamily: 'balo',
                                                fontSize: MediaQuery.of(context).size.height * 0.035),
                                          ),
                                        ],
                                      ),
                                       Padding(
                                        padding: EdgeInsets.symmetric(
                                            horizontal: MediaQuery.of(context).size.width * 0.1),
                                        child:const Divider(
                                          color:
                                              Color.fromRGBO(12, 114, 100, 1),
                                        ),
                                      ),
                                      Padding(
                                        padding:  EdgeInsets.symmetric(
                                            horizontal: MediaQuery.of(context).size.width * 0.1),
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Text(
                                              "Umumiy:  ${Hive.box("tasbehSanoq").values.toList()[0].toString()}",
                                              style: TextStyle(
                                                  color: Colors.black,
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: MediaQuery.of(context).size.height * 0.027),
                                            ),
                                            InkWell(
                                              onTap: () {
                                                Hive.box("tasbehSanoq")
                                                    .put(0, son = 0);
                                              },
                                              child: CircleAvatar(
                                                backgroundColor: const Color.fromRGBO(
                                                    238, 238, 238, 100),
                                                child: Center(
                                                  child: Icon(
                                                    Icons.autorenew_sharp,
                                                    size: MediaQuery.of(context).size.height * 0.035,
                                                    color: Colors.black,
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  );
                                },
                              ),
                            ),
                          ],
                        ),
                      ),
                      Positioned(
                        top: MediaQuery.of(context).size.height * 0.3,
                        left: MediaQuery.of(context).size.width * 0.25,
                        right: MediaQuery.of(context).size.width * 0.3,
                        child: Container(
                          height: MediaQuery.of(context).size.height * 0.2,
                          width: MediaQuery.of(context).size.width * 0.1,
                          color: Colors.transparent,
                          child: Center(
                            child: Text(
                              "$sanoq",
                              style:  TextStyle(
                                fontSize: MediaQuery.of(context).size.height * 0.16,
                                color: const Color.fromRGBO(238, 238, 238, 80),
                              ),
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        bottom: MediaQuery.of(context).size.height * 0.09,
                        left: MediaQuery.of(context).size.width * 0.25,
                        right: MediaQuery.of(context).size.width * 0.25,
                        child: Container(
                          height: MediaQuery.of(context).size.height * 0.25,
                          width: MediaQuery.of(context).size.width * 0.1,
                          color: Colors.transparent,
                          child: IconButton(
                            onPressed: () {
                              setState(() {
                                if (sanoq < 99) {
                                  sanoq += 1;
                                } else if (sanoq == 99) {
                                  sanoq = 0;
                                  Hive.box("tasbehSanoq").putAt(0, son += 1);
                                }
                              });
                            },
                            icon:  Icon(
                              Icons.fingerprint_rounded,
                              size: MediaQuery.of(context).size.height * 0.22,
                              color:const Color.fromRGBO(238, 238, 238, 120),
                            ),
                          ),
                        ),
                      ),
                    ],
                  );
                })
          ],
        ),
      ),
    );
  }

  sozlar() {
    if (sanoq< 33) {
      return "Subhan Alloh";
    } else if (sanoq< 66) {
      return "Alhamdulillah";
    } else if (sanoq< 100) {
      return "Allohu Akbar";
    }
  }

  arabtilida() {
    if (sanoq< 33) {
      return "سبحان الله";
    } else if (sanoq< 66) {
      return "الحمد لله";
    } else if (sanoq< 100) {
      return "الله أكبر";
    }
  }
}
