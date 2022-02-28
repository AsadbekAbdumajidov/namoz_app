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
      padding: const EdgeInsets.only(top: 10, left: 10),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Icon(Icons.account_circle_outlined),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 5),
            child: Text(
              DataAboutPage.ozimHaqimda.toString(),
              style: const TextStyle(
                  color: Colors.black, fontSize: 16, fontFamily: 'balo'),
            ),
          ),
        ],
      ),
    );
  }
}
