import 'package:flutter/material.dart';
import 'package:namoz_najotdir/data/data_about_page.dart';

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
          top: MediaQuery.of(context).size.height * 0.015,
          left: MediaQuery.of(context).size.height * 0.015),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Icon(Icons.warning_amber_outlined),
          Padding(
            padding: EdgeInsets.symmetric(
                horizontal: MediaQuery.of(context).size.height * 0.01),
            child: Text(
              DataAboutPage.dasturHaqida.toString(),
              style:  TextStyle(
                  color: Colors.black, fontSize: MediaQuery.of(context).size.height * 0.02, fontFamily: 'balo'),
            ),
          ),
        ],
      ),
    );
  }
}
