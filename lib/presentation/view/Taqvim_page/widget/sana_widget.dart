import 'package:flutter/material.dart';

class SanaWidget extends StatefulWidget {
  const SanaWidget({Key? key}) : super(key: key);

  @override
  State<SanaWidget> createState() => _SanaWidgetState();
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
      child:  Padding(
        padding: EdgeInsets.only(left: MediaQuery.of(context).size.height * 0.002),
        child: Center(
          child: Text(
            "Sana",
            style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
                fontSize: MediaQuery.of(context).size.height * 0.023,
                fontFamily: 'fonts'),
          ),
        ),
      ),
    );
  }
}
