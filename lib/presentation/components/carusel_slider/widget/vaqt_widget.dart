import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:namoz_najotdir/core/services/service_modul_add.dart';
import 'package:namoz_najotdir/presentation/components/size_konfig.dart';

class VaqtWidget extends StatefulWidget {
  final int? index;
  const VaqtWidget({Key? key, this.index}) : super(key: key);

  @override
  State<VaqtWidget> createState() => _VaqtWidgetState();
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
              style: TextStyle(
                  color: Colors.white,
                  fontSize: widget.index == 0 ||
                          widget.index == 2 ||
                          widget.index == 5
                      ? he(19)
                      : he(24),
                  fontWeight: FontWeight.bold),
            ),
            Text(
              ServiceModul.times[widget.index!][1].toString().substring(0, 5),
              style: TextStyle(
                  color: Colors.white70,
                  fontSize: widget.index == 0 ||
                          widget.index == 2 ||
                          widget.index == 5
                      ? he(35)
                      : he(45),
                  fontWeight: FontWeight.bold),
            )
          ],
        );
      },
    );
  }
}
