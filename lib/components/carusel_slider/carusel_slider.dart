// ignore_for_file: library_private_types_in_public_api

import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:namoz_najotdir/components/carusel_slider/widget/future_builder_widget.dart';
import 'package:namoz_najotdir/components/size_konfig.dart';

class Carusel extends StatefulWidget {
  final String? region;
  const Carusel({Key? key, this.region}) : super(key: key);

  @override
  _CaruselState createState() => _CaruselState();
}

class _CaruselState extends State<Carusel> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      decoration: const BoxDecoration(
        image: DecorationImage(
            image: AssetImage("assets/images/maschid.jpg"), fit: BoxFit.cover),
      ),
      child: CarouselSlider.builder(
        
        itemCount: 9,
        itemBuilder: (_, __, pagev) {
          return Container(
            decoration: const BoxDecoration(
              color: Color.fromRGBO(12, 114, 100, 60),
              borderRadius: BorderRadius.all(Radius.circular(15)),
            ),
            child: FutureBuilderWidget(
              index: __,
              region: widget.region,
            ),
          );
        },
        options: CarouselOptions(
          autoPlay: true,
          height: he(175),
          enlargeCenterPage: true,
          autoPlayCurve: Curves.linear,
          autoPlayInterval: const Duration(seconds: 7),
        ),
      ),
    );
  }
}
