import 'package:flutter/material.dart';

class TitleWidgetHadis extends StatefulWidget {
  final int? index;
  const TitleWidgetHadis({Key? key, this.index}) : super(key: key);

  @override
  _TitleWidgetState createState() => _TitleWidgetState();
}

class _TitleWidgetState extends State<TitleWidgetHadis> {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: const [
        Text(
          "Hadis",
          style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.bold,
              fontSize: 20,
              fontFamily: 'fonts'),
        ),
        CircleAvatar(
          radius: 32,
          backgroundImage: AssetImage("assets/images/linya.jpg"),
          backgroundColor: Colors.white,
        ),
        
      ],
    );
  }
}
