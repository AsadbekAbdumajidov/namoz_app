// ignore_for_file: prefer_const_constructors

import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:namoz_najotdir/data/data.dart';
import 'package:namoz_najotdir/data/namoz_data.dart';
import 'package:namoz_najotdir/screens/namoz_page/widget/tablo_namoz_widget.dart';
import 'package:namoz_najotdir/screens/namoz_page/widget/white_container_widget.dart';

class Namoz extends StatefulWidget {
  const Namoz({Key? key}) : super(key: key);

  @override
  State<Namoz> createState() => _NamozState();
}

class _NamozState extends State<Namoz> {
  @override
  Widget build(BuildContext context) => SlideInUp(
        child: Scaffold(
          backgroundColor: const Color.fromRGBO(238, 238, 238, 1),
          appBar: appBarim(context),
          body: Padding(
            padding: EdgeInsets.symmetric(
                horizontal: MediaQuery.of(context).size.width * 0.05),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                SlideInLeft(
                  child: SizedBox(
                    height: MediaQuery.of(context).size.height * 0.76,
                    width: MediaQuery.of(context).size.width,
                    child: Container(
                      width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.5),
                            spreadRadius: 2,
                            blurRadius: 7,
                            offset: const Offset(0, 5),
                          ),
                        ],
                        color: Color.fromRGBO(12, 114, 100, 1),
                        borderRadius: BorderRadius.all(
                          Radius.circular(20),
                        ),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Padding(
                            padding: EdgeInsets.symmetric(
                                vertical:
                                    MediaQuery.of(context).size.width * 0.02),
                            child: Text(
                              DataNamoz.title[DataNamoz.son],
                              style: const TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 24,
                                  fontFamily: 'balo'),
                            ),
                          ),
                          WhiteContainerWidget()
                        ],
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      DataNamoz.son == 1
                          ? Container()
                          : CircleAvatar(
                              backgroundColor: Colors.white,
                              radius: 25,
                              child: IconButton(
                                onPressed: () {
                                  if (DataNamoz.son != 1) {
                                    DataNamoz.son -= 1;
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
                      TabloNamozwidget(),
                      DataNamoz.son == 13
                          ? Container()
                          : CircleAvatar(
                              backgroundColor: Colors.white,
                              radius: 25,
                              child: IconButton(
                                onPressed: () {
                                  if (DataNamoz.son != 13) {
                                    DataNamoz.son += 1;
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
              splashRadius: 30,
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
        Data.boshMenu[4].toString(),
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
            splashRadius: 30,
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
