// ignore_for_file: must_be_immutable, prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';
import 'package:namoz_najotdir/presentation/view/duo_page/container_page.dart/widget/app_container_widget.dart';
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
        backgroundColor: const Color.fromRGBO(238, 238, 238, 1),
        body: Column(
          children: [
            const AppContainerWidget(),
            DuolarGreenWidget(index: widget.index),
          ],
        ),
      );
}
