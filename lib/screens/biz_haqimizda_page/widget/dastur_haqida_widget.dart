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
      padding: const EdgeInsets.only(top: 5, left: 10),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Icon(Icons.warning_amber_outlined),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 5),
            child: Text(
              DataAboutPage.dasturHaqida.toString(),
              style: const TextStyle(
                  color: Colors.black, fontSize: 16, fontFamily: 'balo'),
            ),
          ),
        ],
      ),
    );
  }
}
