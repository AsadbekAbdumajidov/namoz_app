import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:namoz_najotdir/core/const_islam.dart';
import 'package:namoz_najotdir/presentation/components/size_konfig.dart';

class DateWidget extends StatefulWidget {
  final String? tanlanganRegion;
  const DateWidget({Key? key, this.tanlanganRegion}) : super(key: key);

  @override
  State<DateWidget> createState() => _DateWidgetState();
}

class _DateWidgetState extends State<DateWidget> {
  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
        valueListenable: Hive.box("region").listenable(),
        builder: (context, box, __) {
          return Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Padding(
                padding: const EdgeInsets.all(4.0),
                child: Text(
                  ConstIslam.dataAniqla(),
                  style: const TextStyle(
                      color: Colors.white,
                      fontSize: 14,
                      fontWeight: FontWeight.bold),
                ),
              ),
              Row(
                children: [
                  Icon(Icons.location_on_rounded, color: Colors.red.shade50),
                  Text(
                    "${Hive.box("region").values.toList()[0]} / O'zbekistan",
                    style:  TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: he(12)),
                  ),
                ],
              ),
            ],
          );
        });
  }
}
