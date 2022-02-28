import 'package:flutter/material.dart';

class SanaWidget extends StatefulWidget {
  const SanaWidget({Key? key}) : super(key: key);

  @override
  _SanaWidgetState createState() => _SanaWidgetState();
}

class _SanaWidgetState extends State<SanaWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.08,
      width: MediaQuery.of(context).size.width * 0.15,
      decoration: BoxDecoration(
        
          border: Border.all(width: 0.5, color: Colors.black54),
          borderRadius: const BorderRadius.only(topLeft: Radius.circular(30))),
      child: const Padding(
        padding: EdgeInsets.only(left: 2),
        child: Center(
          child: Text(
            "Sana",
            style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
                fontSize: 20,
                fontFamily: 'fonts'),
          ),
        ),
      ),
    );
  }
}
