// ignore_for_file: library_private_types_in_public_api

import 'package:flutter/material.dart';
import 'package:namoz_najotdir/presentation/components/size_konfig.dart';
import 'package:namoz_najotdir/core/data/data_about_page.dart';

class DasturHaqidaWidget extends StatefulWidget {
  const DasturHaqidaWidget({Key? key}) : super(key: key);

  @override
  _DasturHaqidaWidgetState createState() => _DasturHaqidaWidgetState();
}

class _DasturHaqidaWidgetState extends State<DasturHaqidaWidget> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
          top: he(12),
          left: wi(12)),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Icon(Icons.warning_amber_outlined),
          Padding(
            padding: EdgeInsets.symmetric(
                horizontal: MediaQuery.of(context).size.height * 0.01),
            child: Text(
              DataAboutPage.dasturHaqida.toString(),
              style: TextStyle(
                  color: Colors.black,
                  fontSize: MediaQuery.of(context).size.height * 0.02,
                  fontFamily: 'balo'),
            ),
          ),
        ],
      ),
    );
  }
}
