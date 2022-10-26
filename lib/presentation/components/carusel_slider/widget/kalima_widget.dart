import 'package:flutter/material.dart';
import 'package:namoz_najotdir/core/data/kalima_data.dart';
import 'package:namoz_najotdir/presentation/components/size_konfig.dart';

class KalimaWidget extends StatefulWidget {
  final int? index;
  const KalimaWidget({Key? key, this.index}) : super(key: key);

  @override
   State<KalimaWidget> createState() => _KalimaWidgetState();
}

class _KalimaWidgetState extends State<KalimaWidget> {
  @override
  Widget build(BuildContext context) {
    return Positioned(
      child: Text(
        DataKalima.kalimalar[widget.index!].toString(),
        style:  TextStyle(
            color: Colors.white70,
            fontWeight: FontWeight.bold,
            fontSize: he(12),
            fontFamily: 'courgette'),
        maxLines: 4,
      ),
    );
  }
}
