import 'package:flutter/material.dart';
import 'package:namoz_najotdir/core/services/service_modul_add.dart';
import 'package:namoz_najotdir/presentation/components/size_konfig.dart';

class WidgetKun extends StatefulWidget {
  const WidgetKun({Key? key, required this.index}) : super(key: key);
  final int index;
  @override
  State<WidgetKun> createState() => _WidgetKunState();
}

class _WidgetKunState extends State<WidgetKun> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: he(80),
      width: wi(51.5),
      decoration: BoxDecoration(
          border: Border.all(width: 0.5, color: Colors.black),
          borderRadius: BorderRadius.only(
              topRight: Radius.circular(widget.index == 7 ? 30 : 0))),
      child: Padding(
        padding: const EdgeInsets.only(left: 5),
        child: Center(
          child: Text(
            ServiceModul.times[widget.index][0],
            style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
                fontSize: he(20),
                fontFamily: 'fonts'),
            maxLines: 1,
          ),
        ),
      ),
    );
  }
}
