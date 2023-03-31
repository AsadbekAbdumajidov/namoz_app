// ignore_for_file: library_private_types_in_public_api

import 'package:flutter/material.dart';
import 'package:namoz_najotdir/presentation/components/size_konfig.dart';

class TextWidget extends StatefulWidget {
  const TextWidget({Key? key, required this.title, required this.icon})
      : super(key: key);
  final String title;
  final Icon icon;
  @override
  _TextWidgetState createState() => _TextWidgetState();
}

class _TextWidgetState extends State<TextWidget> {
  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        widget.icon,
        SizedBox(width: wi(8)),
         Expanded(
           child: Text(
              widget.title,
              style: TextStyle(
                  color: Colors.black,
                  fontSize: he(18),
                  fontFamily: 'balo'),
            ),
         ),
      ],
    );
  }
}
