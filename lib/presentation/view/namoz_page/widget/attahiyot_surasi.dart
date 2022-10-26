import 'package:flutter/material.dart';
import 'package:namoz_najotdir/core/data/namoz_data.dart';
import 'package:namoz_najotdir/presentation/components/size_konfig.dart';

class AttahiyotSurasi extends StatefulWidget {
  const AttahiyotSurasi({Key? key}) : super(key: key);

  @override
  State<AttahiyotSurasi> createState() => _AttahiyotSurasiState();
}

class _AttahiyotSurasiState extends State<AttahiyotSurasi> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: he(540),
      decoration: const BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(15))),
      child:  Column(
            children: [
              Padding(
                padding:  EdgeInsets.symmetric(vertical: he(30)),
                child: Container(
                  decoration: BoxDecoration(
                    border: Border.all(
                      width: 0.5,
                      color: const Color.fromRGBO(12, 114, 100, 1),
                    ),
                    borderRadius: const BorderRadius.all(
                      Radius.circular(15),
                    ),
                  ),
                  child: Column(
                    children: [
                      Padding(
                        padding:  EdgeInsets.symmetric(
                            vertical: he(5), horizontal: wi(8)),
                        child: Text(
                          DataNamoz.attahiyot[0],
                          style: const TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontFamily: "balo"),
                        ),
                      ),
                      Padding(
                        padding:  EdgeInsets.symmetric(
                            vertical: he(5), horizontal: wi(8)),
                        child: Text(
                          DataNamoz.attahiyot[2],
                          style: const TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      Padding(
                        padding:  EdgeInsets.symmetric(
                            vertical: he(5), horizontal: wi(8)),
                        child: Text(
                          DataNamoz.attahiyot[1],
                          style: const TextStyle(
                              color: Colors.black, fontFamily: "balo"),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              
            ],
      ),
    );
  }
}
