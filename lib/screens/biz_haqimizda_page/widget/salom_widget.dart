import 'package:flutter/material.dart';
import 'package:namoz_najotdir/data/data_about_page.dart';

class SalomWidget extends StatefulWidget {
  const SalomWidget({Key? key}) : super(key: key);

  @override
  _SalomWidgetState createState() => _SalomWidgetState();
}

class _SalomWidgetState extends State<SalomWidget> {
  @override
  Widget build(BuildContext context) {
    return Padding(
        padding:  EdgeInsets.only(top:  MediaQuery.of(context).size.height * 0.02,),
        child: Text(
          DataAboutPage.salom.toString(),
          style: const TextStyle(
              color: Colors.black, fontSize: 18, fontFamily: 'balo'),
        ));
  }
}
