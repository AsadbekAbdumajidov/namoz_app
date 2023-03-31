// ignore_for_file: must_be_immutable, prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';
import 'package:namoz_najotdir/core/data/data.dart';
import 'package:namoz_najotdir/core/themes/app_colors.dart';
import 'package:namoz_najotdir/presentation/components/custom_app_bar.dart';
import 'package:namoz_najotdir/presentation/view/suralar_page/container_page.dart/widget/suralar_green_widget.dart';

class Suralarcontainer extends StatefulWidget {
  var index;
  Suralarcontainer({Key? key, this.index}) : super(key: key);

  @override
  State<Suralarcontainer> createState() => _SuralarcontainerState();
}

class _SuralarcontainerState extends State<Suralarcontainer> {
  @override
  Widget build(BuildContext context) => Scaffold(
        backgroundColor: AppColors.backgroundColor,
        appBar: CustomAppbar(
            statusHeight: 0,
            onRightTap: () {
              Navigator.pushNamed(context, '/haqimizda');
            },
            title: Data.boshMenu[10].toString()),
        body: SuralarGreenWidget(index: widget.index),
      );
}
