import 'package:flutter/material.dart';
import 'package:namoz_najotdir/core/data/kalima_data.dart';
import 'package:namoz_najotdir/presentation/components/size_konfig.dart';

class ListTileWidget extends StatefulWidget {
  final int? index;
  const ListTileWidget({Key? key, this.index}) : super(key: key);

  @override
  State<ListTileWidget> createState() => _ListTileWidgetState();
}

class _ListTileWidgetState extends State<ListTileWidget> {
  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Padding(
        padding: EdgeInsets.only(bottom: he(10)),
        child: Container(
          decoration: BoxDecoration(
            color: Colors.white,
            border: Border.all(
              width: 0.5,
              color: const Color.fromRGBO(12, 114, 100, 1),
            ),
            borderRadius: const BorderRadius.all(
              Radius.circular(10),
            ),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.5),
                spreadRadius: 2,
                blurRadius: 7,
                offset: const Offset(0, 5),
              ),
            ],
          ),
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: wi(16), vertical: he(14)),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  DataKalima.kalimalar[widget.index!],
                  style: const TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'balo'),
                ),
                const Divider(
                  color: Colors.black,
                ),
                Padding(
                  padding: EdgeInsets.only(top: he(10)),
                  child: Text(
                    DataKalima.title[widget.index ?? 0],
                    style: const TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'balo'),
                  ),
                ),
                Text(
                  DataKalima.manosi[widget.index ?? 0],
                  style:
                      const TextStyle(color: Colors.black, fontFamily: 'balo'),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
