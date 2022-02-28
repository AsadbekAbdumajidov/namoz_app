import 'package:flutter/material.dart';
import 'package:namoz_najotdir/core/const_islam.dart';
import 'package:namoz_najotdir/services/service_islam.dart';

class WidgetDate extends StatefulWidget {
  final int? index;
  const WidgetDate({Key? key, this.index}) : super(key: key);

  @override
  _WidgetDetaState createState() => _WidgetDetaState();
}

class _WidgetDetaState extends State<WidgetDate> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.08,
      width: MediaQuery.of(context).size.width * 0.15,
      decoration: BoxDecoration(
          color: color(widget.index),
          borderRadius: BorderRadius.only(
              bottomLeft: widget.index! == 27
                  ? const Radius.circular(20)
                  : const Radius.circular(0)),
          border: Border.all(width: 0.5, color: Colors.black54)),
      child: Padding(
        padding: const EdgeInsets.only(left: 10),
        child: Text(
          ServiceIslam.datas![widget.index!]["date"]["readable"]
              .toString()
              .substring(0, 6),
          style: const TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.bold,
              fontSize: 20,
              fontFamily: 'fonts'),
        ),
      ),
    );
  }

  color(index) {
    if (ServiceIslam.datas![widget.index!]['date']['gregorian']['date'] ==
        ConstIslam.v) {
      return Colors.cyan.shade50;
    } else if (ServiceIslam.datas![widget.index!]['date']['gregorian']
            ['weekday']["en"] ==
        "Friday") {
      return Colors.yellow.shade100;
    }
  }
}
