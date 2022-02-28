import 'package:flutter/material.dart';
import 'package:namoz_najotdir/data/data.dart';
import 'package:namoz_najotdir/data/data_tahorat_olish.dart';
import 'package:namoz_najotdir/screens/tahorat_olish_page/widget/green_container_widget.dart';
import 'package:namoz_najotdir/screens/tahorat_olish_page/widget/tablo_tahorat_widget.dart';

class TahoratOlish extends StatefulWidget {
  const TahoratOlish({Key? key}) : super(key: key);

  @override
  _NamozState createState() => _NamozState();
}

class _NamozState extends State<TahoratOlish> {
  @override
  Widget build(BuildContext context) => Scaffold(
        backgroundColor: const Color.fromRGBO(238, 238, 238, 1),
        appBar: appBarim(context),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              // ! const qoyilsa ushu filedagi malumot satstate bolmaydi
              GreenContainerWidget(),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    DataTahoratOlish.son == 1
                        ? Container()
                        : CircleAvatar(
                            backgroundColor: Colors.white,
                            radius: 25,
                            child: IconButton(
                              onPressed: () {
                                if (DataTahoratOlish.son != 1) {
                                  DataTahoratOlish.son -= 1;
                                  setState(() {});
                                }
                              },
                              icon: const Icon(
                                Icons.arrow_back_ios_new,
                                color: Color.fromRGBO(12, 114, 100, 1),
                                size: 30,
                              ),
                            ),
                          ),
                    // ! const qoyilsa ushu filedagi malumot satstate bolmaydi
                    TabloWidget(),
                    DataTahoratOlish.son == 9
                        ? Container()
                        : CircleAvatar(
                            backgroundColor: Colors.white,
                            radius: 25,
                            child: IconButton(
                              onPressed: () {
                                if (DataTahoratOlish.son != 9) {
                                  DataTahoratOlish.son += 1;
                                  setState(() {});
                                }
                              },
                              icon: const Icon(
                                Icons.arrow_forward_ios,
                                color: Color.fromRGBO(12, 114, 100, 1),
                                size: 30,
                              ),
                            ),
                          ),
                  ],
                ),
              ),
            ],
          ),
        ),
      );

  AppBar appBarim(BuildContext context) {
    return AppBar(
      backgroundColor: const Color.fromRGBO(238, 238, 238, 1),
      elevation: 0,
      toolbarHeight: MediaQuery.of(context).size.height * 0.07,
      centerTitle: true,
      leading: Padding(
        padding: const EdgeInsets.only(top: 5, left: 15),
        child: CircleAvatar(
            backgroundColor: Colors.white,
            child: IconButton(
              onPressed: () {
                Navigator.pushNamed(context, '/home');
              },
              icon: const Icon(
                Icons.arrow_back_ios_new,
                color: Color.fromRGBO(12, 114, 100, 1),
                size: 25,
              ),
            )),
      ),
      title: Text(
        Data.boshMenu[5].toString(),
        style: const TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.bold,
            fontSize: 25,
            fontFamily: "Fonts"),
      ),
      actions: [
        Padding(
          padding: const EdgeInsets.only(right: 10),
          child: IconButton(
            onPressed: () {
              Navigator.pushNamed(context, '/haqimizda');
            },
            icon: const Icon(
              Icons.help_outline_rounded,
              size: 34,
              color: Color.fromRGBO(12, 114, 100, 1),
            ),
          ),
        )
      ],
    );
  }
}
