import 'package:flutter/material.dart';
import 'package:namoz_najotdir/services/service_modul_add.dart';

class WidgetKun extends StatefulWidget {
  final int? index;
  const WidgetKun({Key? key, this.index}) : super(key: key);

  @override
  _WidgetKunState createState() => _WidgetKunState();
}

class _WidgetKunState extends State<WidgetKun> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.08,
      width: widget.index! != 8
          ? MediaQuery.of(context).size.width * 0.15
          : MediaQuery.of(context).size.width * 0.15,
      decoration: BoxDecoration(
          border: Border.all(width: 0.5, color: Colors.black),
          borderRadius: BorderRadius.only(
              topRight: Radius.circular(widget.index! == 7 ? 30 : 0))),
      child: Padding(
        padding: const EdgeInsets.only(left: 5),
        child: Center(
          child: Text(
            ServiceModul.times[widget.index!][0],
            style: const TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
                fontSize: 16,
                fontFamily: 'fonts'),
            maxLines: 1,
          ),
        ),
      ),
    );
  }
}
