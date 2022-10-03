import 'package:flutter/material.dart';

class BoshPageUchun extends StatefulWidget {
  const BoshPageUchun({Key? key}) : super(key: key);

  @override
  State<BoshPageUchun> createState() => _BoshPageUchunState();
}

class _BoshPageUchunState extends State<BoshPageUchun> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color.fromRGBO(238, 238, 238, 1),
      height: MediaQuery.of(context).size.height * 0.885,
      width: MediaQuery.of(context).size.width * 1,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 120, bottom: 30),
                child: Container(
                  height: MediaQuery.of(context).size.height * 0.3,
                  width: MediaQuery.of(context).size.width * 0.5,
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                        image:
                            AssetImage("assets/images/PngItem_5121105(3).png"),
                        fit: BoxFit.contain),
                  ),
                ),
              ),
              const Text(
                "Birodarim ushbu sahifamiz hozircha\n                ishga tushirilmagan !!!",
                style: TextStyle(
                    color: Colors.black, fontSize: 20, fontFamily: 'balo'),
              ),
            ],
          ),
          Container(
            height: MediaQuery.of(context).size.height * 0.17,
            decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("assets/images/maschid.jpg"),
                  fit: BoxFit.cover),
            ),
          )
        ],
      ),
    );
  }
}
