import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:namoz_najotdir/core/data/data.dart';
import 'package:namoz_najotdir/presentation/components/custom_app_bar.dart';
import 'package:namoz_najotdir/presentation/components/size_konfig.dart';
import 'package:namoz_najotdir/presentation/view/Taqvim_page/widget/container_green_widget.dart';

class TaqvimPage extends StatefulWidget {
  const TaqvimPage({Key? key}) : super(key: key);

  @override
  State<TaqvimPage> createState() => _TaqvimPageState();
}

class _TaqvimPageState extends State<TaqvimPage> {
  @override
  Widget build(BuildContext context) => SlideInUp(
        child: SlideInLeft(
          child: Scaffold(
            backgroundColor: const Color.fromRGBO(238, 238, 238, 1),
            appBar:CustomAppbar(
              statusHeight: 0,
              onRightTap: () {
                Navigator.pushNamed(context, '/haqimizda');
              },
              title: Data.boshMenu[2].toString()),
            body: Padding(
              padding: EdgeInsets.symmetric(
                  horizontal: wi(14)),
              child: Column(
                children: [
                  SlideInLeft(
                    child: const ContainerGreenWidget(),
                  ),
                ],
              ),
            ),
          ),
        ),
      );

}
