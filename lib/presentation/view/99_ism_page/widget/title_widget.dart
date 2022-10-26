import 'package:flutter/material.dart';
import 'package:namoz_najotdir/core/data/ismlar_data.dart';
import 'package:namoz_najotdir/presentation/components/size_konfig.dart';

class TitleWidget extends StatefulWidget {
  final int? index;
  const TitleWidget({Key? key, this.index}) : super(key: key);

  @override
  State<TitleWidget> createState() => _TitleWidgetState();
}

class _TitleWidgetState extends State<TitleWidget> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  EdgeInsets.symmetric(vertical: he(15)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            Ismlar.name[widget.index??0].toString(),
            style:  TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
                fontSize: he(25),
                fontFamily: 'fonts'),
          ),
          Text(
            Ismlar.arabcha[widget.index!].toString(),
            style:  TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
                fontSize: widget.index == 83 ? he(20) : he(22),
                fontFamily: 'fonts'),
          ),
        ],
      ),
    );
  }
}
