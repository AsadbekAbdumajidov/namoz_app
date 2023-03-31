// ignore_for_file: must_be_immutable, prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';
import 'package:namoz_najotdir/core/data/data.dart';
import 'package:namoz_najotdir/core/themes/app_colors.dart';
import 'package:namoz_najotdir/presentation/components/custom_app_bar.dart';
import 'package:namoz_najotdir/presentation/view/hadis_page/hadis_containe/widget/green_con_page.dart';

class HadisContainer extends StatefulWidget {
  var index;
  HadisContainer({Key? key, this.index}) : super(key: key);

  @override
  State<HadisContainer> createState() => _HadisContainerState();
}

class _HadisContainerState extends State<HadisContainer> {
  @override
  Widget build(BuildContext context) => Scaffold(
        backgroundColor: AppColors.backgroundColor,
        appBar: CustomAppbar(
            statusHeight: 0,
            onRightTap: () {
              Navigator.pushNamed(context, '/haqimizda');
            },
            title: Data.boshMenu[7].toString()),
        body: GreenConWidget(index: widget.index),
      );
}
