// ignore_for_file: must_be_immutable, prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';
import 'package:namoz_najotdir/presentation/view/suralar_page/container_page.dart/widget/app_container_widget.dart';
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
        backgroundColor: const Color.fromRGBO(238, 238, 238, 1),
        body: Column(
          children: [
            const SuralarContainerWidget(),
            SuralarGreenWidget(index: widget.index),
          ],
        ),
      );
}
