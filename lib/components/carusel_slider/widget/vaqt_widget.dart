import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:namoz_najotdir/services/service_modul_add.dart';

class VaqtWidget extends StatefulWidget {
  final int? index;
  const VaqtWidget({Key? key, this.index}) : super(key: key);

  @override
  _VaqtWidgetState createState() => _VaqtWidgetState();
}

class _VaqtWidgetState extends State<VaqtWidget> {
  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
      valueListenable: Hive.box("datam").listenable(),
      builder: (context, box, __) {
        return Column(
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Text(
              ServiceModul.times[widget.index!][0].toString(),
              style:  TextStyle(
                  color: Colors.white,
                  fontSize: MediaQuery.of(context).size.height * 0.025,
                  fontWeight: FontWeight.bold),
            ),
            Text(
              ServiceModul.times[widget.index!][1].toString().substring(0, 5),
              style: const TextStyle(
                  color: Colors.white70,
                  fontSize: 45,
                  fontWeight: FontWeight.bold),
            )
          ],
        );
      },
    );
  }
}
