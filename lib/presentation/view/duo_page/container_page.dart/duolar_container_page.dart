// ignore_for_file: must_be_immutable, prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';
import 'package:namoz_najotdir/core/data/data.dart';
import 'package:namoz_najotdir/core/themes/app_colors.dart';
import 'package:namoz_najotdir/presentation/components/custom_app_bar.dart';
import 'package:namoz_najotdir/presentation/view/duo_page/container_page.dart/widget/duolar_green_widget.dart';

class DuolarContainer extends StatefulWidget {
  var index;
  DuolarContainer({Key? key, this.index}) : super(key: key);

  @override
  State<DuolarContainer> createState() => _DuolarContainerState();
}

class _DuolarContainerState extends State<DuolarContainer> {
  @override
  Widget build(BuildContext context) => Scaffold(
        backgroundColor: AppColors.backgroundColor,
        appBar: CustomAppbar(
            statusHeight: 0,
            onRightTap: () {
              Navigator.pushNamed(context, '/haqimizda');
            },
            title: Data.boshMenu[9].toString()),
        body: DuolarGreenWidget(index: widget.index),
      );
}
