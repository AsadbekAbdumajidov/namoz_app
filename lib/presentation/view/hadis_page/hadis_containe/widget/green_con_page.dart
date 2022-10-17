import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:namoz_najotdir/core/data/hadis_data.dart';

class GreenConWidget extends StatefulWidget {
  final int? index;
  const GreenConWidget({Key? key, this.index}) : super(key: key);

  @override
  State<GreenConWidget> createState() => _GreenConWidgetState();
}

class _GreenConWidgetState extends State<GreenConWidget> {
 

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 12),
      child: SlideInLeft(
        child: SizedBox(
          height: MediaQuery.of(context).size.height * 0.86,
          width: MediaQuery.of(context).size.width,
          child: Container(
            width: MediaQuery.of(context).size.width,
            decoration: const BoxDecoration(
              color: Color.fromRGBO(12, 114, 100, 1),
              borderRadius: BorderRadius.all(
                Radius.circular(20),
              ),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 12),
                  child: Text(
                    "${widget.index! + 1}  Hadis",
                    style: const TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 24,
                        fontFamily: 'balo'),
                  ),
                ),
                Container(
                  height: MediaQuery.of(context).size.height * 0.75,
                  width: MediaQuery.of(context).size.width * 0.9,
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(30),
                      topRight: Radius.circular(30),
                      bottomLeft: Radius.circular(15),
                      bottomRight: Radius.circular(15),
                    ),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 15, vertical: 10),
                    child: Column(
                      children: [
                        Text(
                          Hadislar.hadis[widget.index!]["matni"].toString(),
                          style: const TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontFamily: 'balo'
                          ),
                        )
                      ],
                    ),
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
