import 'package:flutter/material.dart';
import 'package:namoz_najotdir/core/data/data.dart';
import 'package:namoz_najotdir/core/data/data_tahorat_olish.dart';
import 'package:namoz_najotdir/presentation/components/custom_app_bar.dart';
import 'package:namoz_najotdir/presentation/components/size_konfig.dart';
import 'package:namoz_najotdir/presentation/view/tahorat_olish_page/widget/green_container_widget.dart';
import 'package:namoz_najotdir/presentation/view/tahorat_olish_page/widget/tablo_tahorat_widget.dart';

class TahoratOlish extends StatefulWidget {
  const TahoratOlish({Key? key}) : super(key: key);

  @override
  State<TahoratOlish> createState() => _TahoratOlishState();
}

class _TahoratOlishState extends State<TahoratOlish> {
  @override
  Widget build(BuildContext context) => Scaffold(
        backgroundColor: const Color.fromRGBO(238, 238, 238, 1),
        appBar: CustomAppbar(
            statusHeight: 0,
            onRightTap: () {
              Navigator.pushNamed(context, '/haqimizda');
            },
            title: Data.boshMenu[5].toString()),
        body: Padding(
          padding: EdgeInsets.symmetric(horizontal: wi(15)),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              GreenContainerWidget(index: DataTahoratOlish.son),
              Padding(
                padding: EdgeInsets.symmetric(vertical: he(10)),
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
                                  setState(() {
                                    DataTahoratOlish.son -= 1;
                                  });
                                }
                              },
                              icon: Icon(
                                Icons.arrow_back_ios_new,
                                color: const Color.fromRGBO(12, 114, 100, 1),
                                size: he(35),
                              ),
                            ),
                          ),
                    TabloWidget(index: DataTahoratOlish.son),
                    DataTahoratOlish.son == 9
                        ? Container()
                        : CircleAvatar(
                            backgroundColor: Colors.white,
                            radius: 25,
                            child: IconButton(
                              onPressed: () {
                                if (DataTahoratOlish.son != 9) {
                                  setState(() {
                                    DataTahoratOlish.son += 1;
                                  });
                                }
                              },
                              icon: Icon(
                                Icons.arrow_forward_ios,
                                color: const Color.fromRGBO(12, 114, 100, 1),
                                size: he(35),
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
}
