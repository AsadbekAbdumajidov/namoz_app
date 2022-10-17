import 'package:flutter/material.dart';
import 'package:flutter_qiblah/flutter_qiblah.dart';

import 'widget/loading_indicator.dart';
import 'widget/qiblah_maps.dart';
import 'widget/qiblahcompas.dart';

class KiblahPage extends StatefulWidget {
  const KiblahPage({Key? key}) : super(key: key);

  @override
  State<KiblahPage> createState() => _KiblahPageState();
}

class _KiblahPageState extends State<KiblahPage> {
  final _deviceSupport = FlutterQiblah.androidDeviceSensorSupport();

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: _deviceSupport,
      builder: (_, AsyncSnapshot<bool?> snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return const LoadingIndicator();
        }
        if (snapshot.hasError) {
          return Center(
            child: Text("Error: ${snapshot.error.toString()}"),
          );
        }

        if (snapshot.data!) {
          return const QiblahCompass();
        } else {
          return QiblahMaps();
        }
      },
    );
  }
}
