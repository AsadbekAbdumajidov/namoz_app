// ignore_for_file: prefer_const_constructors

import 'package:animate_do/animate_do.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:namoz_najotdir/core/data/data.dart';
import 'package:namoz_najotdir/core/data/namoz_data.dart';
import 'package:namoz_najotdir/core/themes/app_colors.dart';
import 'package:namoz_najotdir/presentation/components/custom_app_bar.dart';
import 'package:namoz_najotdir/presentation/components/size_konfig.dart';
import 'package:namoz_najotdir/presentation/view/namoz_page/widget/tablo_namoz_widget.dart';
import 'package:namoz_najotdir/presentation/view/namoz_page/widget/white_container_widget.dart';

class Namoz extends StatefulWidget {
  const Namoz({Key? key}) : super(key: key);

  @override
  State<Namoz> createState() => _NamozState();
}

class _NamozState extends State<Namoz> {
  @override
  Widget build(BuildContext context) => SlideInUp(
        child: Scaffold(
          backgroundColor: AppColors.backgroundColor,
          appBar: CustomAppbar(
              statusHeight: 0,
              onRightTap: () {
                Navigator.pushNamed(context, '/haqimizda');
              },
              title: Data.boshMenu[4].toString()),
          body: Padding(
            padding: EdgeInsets.symmetric(horizontal: wi(14)),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                SlideInLeft(
                  child: SizedBox(
                    height: he(696),
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
                        color: AppColors.primaryColor,
                        borderRadius: BorderRadius.all(
                          Radius.circular(20),
                        ),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Padding(
                            padding: EdgeInsets.symmetric(vertical: he(6)),
                            child: Text(
                              DataNamoz.title[DataNamoz.son],
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: he(25),
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
                  padding: EdgeInsets.symmetric(vertical: he(8)),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      DataNamoz.son == 1
                          ? Container()
                          : CircleAvatar(
                              backgroundColor: Colors.white,
                              radius: 25,
                              child: GestureDetector(
                                onTap: () {
                                  if (DataNamoz.son != 1) {
                                    DataNamoz.son -= 1;
                                    setState(() {});
                                  }
                                },
                                child: Padding(
                                  padding:  EdgeInsets.only(right: wi(2)),
                                  child: Icon(
                                    CupertinoIcons.back,
                                    color: AppColors.primaryColor,
                                    size: he(35),
                                  ),
                                ),
                              ),
                            ),
                      TabloNamozwidget(),
                      DataNamoz.son == 13
                          ? Container()
                          : CircleAvatar(
                              backgroundColor: Colors.white,
                              radius: 25,
                              child: GestureDetector(
                                onTap: () {
                                  if (DataNamoz.son != 13) {
                                    setState(() {
                                      DataNamoz.son += 1;
                                    });
                                  }
                                },
                                child: Padding(
                                  padding:  EdgeInsets.only(left: wi(2)),
                                  child: Icon(
                                    CupertinoIcons.forward,
                                    color: AppColors.primaryColor,
                                    size: he(35),
                                  ),
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
}
