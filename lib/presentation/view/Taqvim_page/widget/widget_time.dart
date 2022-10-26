import 'package:flutter/material.dart';
import 'package:namoz_najotdir/core/const_islam.dart';
import 'package:namoz_najotdir/core/services/service_islam.dart';
import 'package:namoz_najotdir/presentation/components/size_konfig.dart';

class WidgetTimes extends StatefulWidget {
  final int? index;
  const WidgetTimes({Key? key, this.index}) : super(key: key);

  @override
  State<WidgetTimes> createState() => _WidgetTimesState();
}

class _WidgetTimesState extends State<WidgetTimes> {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          height: he(70),
          width: MediaQuery.of(context).size.width * 0.15,
          decoration: BoxDecoration(
              color: color(widget.index),
              border: Border.all(width: 0.5, color: Colors.black)),
          child: Padding(
            padding: const EdgeInsets.only(left: 5),
            child: Center(
              child: Text(
                ServiceIslam.datas![widget.index!]["timings"]["Fajr"]
                    .toString()
                    .substring(0, 6),
                style: const TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                    fontFamily: 'fonts'),
              ),
            ),
          ),
        ),
        Container(
          height: he(70),
          width: MediaQuery.of(context).size.width * 0.15,
          decoration: BoxDecoration(
              color: color(widget.index),
              border: Border.all(width: 0.5, color: Colors.black)),
          child: Padding(
            padding: const EdgeInsets.only(left: 5),
            child: Center(
              child: Text(
                ServiceIslam.datas![widget.index!]["timings"]["Dhuhr"]
                    .toString()
                    .substring(0, 6),
                style: const TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                    fontFamily: 'fonts'),
              ),
            ),
          ),
        ),
        Container(
          height: he(70),
          width: MediaQuery.of(context).size.width * 0.15,
          decoration: BoxDecoration(
              color: color(widget.index),
              border: Border.all(width: 0.5, color: Colors.black)),
          child: Padding(
            padding: const EdgeInsets.only(left: 5),
            child: Center(
              child: Text(
                ServiceIslam.datas![widget.index!]["timings"]["Asr"]
                    .toString()
                    .substring(0, 6),
                style: const TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                    fontFamily: 'fonts'),
              ),
            ),
          ),
        ),
        Container(
          height: he(70),
          width: MediaQuery.of(context).size.width * 0.15,
          decoration: BoxDecoration(
              color: color(widget.index),
              border: Border.all(width: 0.5, color: Colors.black)),
          child: Padding(
            padding: const EdgeInsets.only(left: 5),
            child: Center(
              child: Text(
                ServiceIslam.datas![widget.index!]["timings"]["Maghrib"]
                    .toString()
                    .substring(0, 6),
                style: const TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                    fontFamily: 'fonts'),
              ),
            ),
          ),
        ),
        Container(
          height: he(70),
          width: MediaQuery.of(context).size.width * 0.15,
          decoration: BoxDecoration(
            color: color(widget.index),
            border: widget.index! == 8
                ? Border.all()
                : Border.all(width: 0.5, color: Colors.black54),
          ),
          child: Padding(
            padding: EdgeInsets.only(left: wi(5)),
            child: Center(
              child: Text(
                ServiceIslam.datas![widget.index!]["timings"]["Isha"]
                    .toString()
                    .substring(0, 6),
                style: const TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                    fontFamily: 'fonts'),
              ),
            ),
          ),
        ),
      ],
    );
  }

  color<Radius>(index) {
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
