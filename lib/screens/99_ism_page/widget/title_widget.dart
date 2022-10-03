import 'package:flutter/material.dart';
import 'package:namoz_najotdir/data/ismlar_data.dart';

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
      padding: const EdgeInsets.symmetric(vertical: 15),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            Ismlar.name[widget.index!].toString(),
            style: const TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
                fontSize: 20,
                fontFamily: 'fonts'),
          ),
          Text(
            Ismlar.arabcha[widget.index!].toString(),
            style:  TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
                fontSize: widget.index == 84 ? 16 : 20,
                fontFamily: 'fonts'),
          ),
        ],
      ),
    );
  }
}
