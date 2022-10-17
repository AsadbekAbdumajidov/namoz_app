// ignore_for_file: must_be_immutable, prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';
import 'package:namoz_najotdir/presentation/view/hadis_page/hadis_containe/widget/app_widget.dart';
import 'package:namoz_najotdir/presentation/view/hadis_page/hadis_containe/widget/green_con_page.dart';

class HadisContainer extends StatefulWidget {
   var index;
  HadisContainer({Key? key,this.index}) : super(key: key);

  @override
  State<HadisContainer> createState() => _HadisContainerState();
}

class _HadisContainerState extends State<HadisContainer> {
  @override
  Widget build(BuildContext context) => Scaffold(
        backgroundColor: const Color.fromRGBO(238, 238, 238, 1),
        body: Column(
          children:  [
           const AppContainer(),
            GreenConWidget(index: widget.index),
             ],
        ),
      );
}


