// ignore_for_file: library_private_types_in_public_api

import 'package:flutter/material.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';
import 'package:namoz_najotdir/components/carusel_slider/widget/date_widget.dart';
import 'package:namoz_najotdir/components/carusel_slider/widget/vaqt_widget.dart';
import 'package:namoz_najotdir/components/size_konfig.dart';
import 'package:namoz_najotdir/services/service_islam.dart';
import 'package:namoz_najotdir/services/service_modul_add.dart';

class FutureBuilderWidget extends StatefulWidget {
  final int? index;
  final String? region;
  const FutureBuilderWidget({Key? key, this.index, this.region})
      : super(key: key);

  @override
  _FutureBuilderWidgetState createState() => _FutureBuilderWidgetState();
}

class _FutureBuilderWidgetState extends State<FutureBuilderWidget> {
  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
        future: ServiceIslam.getIslamData(),
        builder: (BuildContext context, AsyncSnapshot snapshot) {
          if (!snapshot.hasData) {
            return Center(
              // ! loading_animation_widget paket
              child: LoadingAnimationWidget.hexagonDots(
                color: Colors.white,
                size: 50,
              ),
            );
          } else if (snapshot.hasError || ServiceIslam.datas!.isEmpty) {
            return Center(
              // ! loading_animation_widget paket
              child: LoadingAnimationWidget.hexagonDots(
                color: Colors.white,
                size: 50,
              ),
            );
          } else {
            ServiceModul.timesAdd();
            return Padding(
              padding:const EdgeInsets.all(12),
              child: Stack(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      DateWidget(tanlanganRegion: widget.region),
                      VaqtWidget(index: widget.index),
                    ],
                  ),
                  Image.asset("assets/images/lampa.png",height: he(60)),
                ],
              ),
            );
          }
        });
  }
}
