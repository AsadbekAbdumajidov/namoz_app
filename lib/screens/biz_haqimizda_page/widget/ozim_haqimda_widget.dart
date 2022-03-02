import 'package:flutter/material.dart';
import 'package:namoz_najotdir/data/data_about_page.dart';

class OzimHaqimdaWidget extends StatefulWidget {
  const OzimHaqimdaWidget({Key? key}) : super(key: key);

  @override
  _OzimHaqimdaWidgetState createState() => _OzimHaqimdaWidgetState();
}

class _OzimHaqimdaWidgetState extends State<OzimHaqimdaWidget> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
          top: MediaQuery.of(context).size.height * 0.015,
          left: MediaQuery.of(context).size.height * 0.015),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Icon(Icons.account_circle_outlined),
          Padding(
            padding:  EdgeInsets.symmetric(horizontal: MediaQuery.of(context).size.height * 0.01),
            child: Text(
              DataAboutPage.ozimHaqimda.toString(),
              style:  TextStyle(
                  color: Colors.black, fontSize: MediaQuery.of(context).size.height * 0.02, fontFamily: 'balo'),
            ),
          ),
        ],
      ),
    );
  }
}
