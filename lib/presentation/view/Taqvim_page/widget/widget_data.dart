import 'package:flutter/material.dart';
import 'package:namoz_najotdir/core/const_islam.dart';
import 'package:namoz_najotdir/core/services/service_islam.dart';
import 'package:namoz_najotdir/presentation/components/size_konfig.dart';

class WidgetDate extends StatefulWidget {
  final int? index;
  const WidgetDate({Key? key, this.index}) : super(key: key);

  @override
  State<WidgetDate> createState() => _WidgetDetaState();
}

class _WidgetDetaState extends State<WidgetDate> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: he(70),
      width: MediaQuery.of(context).size.width * 0.15,
      decoration: BoxDecoration(
          color: color(widget.index),
          borderRadius: const BorderRadius.only(),
          border: Border.all(width: 0.5, color: Colors.black54)),
      child: Padding(
        padding:
            EdgeInsets.only(left: MediaQuery.of(context).size.height * 0.01),
        child: Text(
          ServiceIslam.datas![widget.index ?? 0]["date"]["readable"]
              .toString()
              .substring(0, 6),
              maxLines: 2,
          style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.bold,
              fontSize: MediaQuery.of(context).size.width * 0.05,
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
