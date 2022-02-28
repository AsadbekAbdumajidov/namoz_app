import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:namoz_najotdir/core/const_islam.dart';

class KunWidget extends StatefulWidget {
  const KunWidget({Key? key}) : super(key: key);

  @override
  _KunWidgetState createState() => _KunWidgetState();
}

class _KunWidgetState extends State<KunWidget> {
  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
        valueListenable: Hive.box("region").listenable(),
        builder: (_, box, __) {
          return Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Padding(
                  padding: const EdgeInsets.all(4.0),
                  child: Text(
                    ConstIslam.dataAniqla(),
                    style: const TextStyle(
                        color: Colors.black,
                        fontSize: 14,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                Row(
                  children: [
                    const Icon(Icons.location_on_rounded, color: Colors.black),
                    Text(
                      "${Hive.box("region").values.toList()[0]} / O'zbekistan",
                      style: const TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 12),
                    ),
                  ],
                ),
              ]);
        });
  }
}
