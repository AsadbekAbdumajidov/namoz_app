import 'package:flutter/material.dart';
import 'package:namoz_najotdir/presentation/components/size_konfig.dart';
import 'package:namoz_najotdir/presentation/view/99_ism_page/widget/list_tile_widget.dart';
import 'package:namoz_najotdir/presentation/view/99_ism_page/widget/title_widget.dart';

class ExpansionTileWidget extends StatefulWidget {
  final int? indexOf;
  const ExpansionTileWidget({Key? key, this.indexOf}) : super(key: key);

  @override
  State<ExpansionTileWidget> createState() => _ExpansionTileWidgetState();
}

class _ExpansionTileWidgetState extends State<ExpansionTileWidget> {
  @override
  Widget build(BuildContext context) {
    return ExpansionTile(
      controlAffinity: ListTileControlAffinity.trailing,
      leading: CircleAvatar(
        radius: he(40),
        backgroundImage: const AssetImage("assets/images/aylana.png"),
        backgroundColor: Colors.white,
        child: Center(
            child: Text(
          "${widget.indexOf! + 1}",
          style:
              const TextStyle(fontWeight: FontWeight.bold, fontFamily: 'balo'),
        )),
      ),
      title: TitleWidget(index: widget.indexOf),
      children: [
        ListTilewidgetIsmlar(indexx: widget.indexOf),
      ],
    );
  }
}
