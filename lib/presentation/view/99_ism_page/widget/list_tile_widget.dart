import 'package:flutter/material.dart';
import 'package:namoz_najotdir/core/data/ismlar_data.dart';
import 'package:namoz_najotdir/presentation/components/size_konfig.dart';

class ListTilewidgetIsmlar extends StatefulWidget {
  final int? indexx;
  const ListTilewidgetIsmlar({Key? key, this.indexx}) : super(key: key);

  @override
  State<ListTilewidgetIsmlar> createState() => _ListTilewidgetIsmlarState();
}

class _ListTilewidgetIsmlarState extends State<ListTilewidgetIsmlar> {
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
                const Text(
                  "Manosi",
                  style: TextStyle(
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
                    Ismlar.manosi[widget.indexx ?? 0].toString(),
                    style: const TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'balo'),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
