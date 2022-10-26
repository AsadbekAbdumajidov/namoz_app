import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:namoz_najotdir/core/data/hadis_data.dart';
import 'package:namoz_najotdir/presentation/components/size_konfig.dart';

class GreenConWidget extends StatefulWidget {
  final int index;
  const GreenConWidget({Key? key, required this.index}) : super(key: key);

  @override
  State<GreenConWidget> createState() => _GreenConWidgetState();
}

class _GreenConWidgetState extends State<GreenConWidget> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: wi(14)),
      child: SlideInLeft(
        child: SizedBox(
          height: he(770),
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
                  padding: EdgeInsets.symmetric(vertical: he(5)),
                  child: Text(
                    "${widget.index + 1}  Hadis",
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: he(35),
                        fontFamily: 'balo'),
                  ),
                ),
                Container(
                  height: he(685),
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
                  child: ListView.builder(
                      padding: const EdgeInsets.all(0),
                      itemCount: 1,
                      itemBuilder: (_, __) {
                        return Padding(
                          padding: EdgeInsets.symmetric(
                              horizontal: wi(12), vertical: he(16)),
                          child: Column(
                            children: [
                              Text(
                                Hadislar.hadis[widget.index]["matni"]
                                    .toString(),
                                style: const TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold,
                                    fontFamily: 'balo'),
                              )
                            ],
                          ),
                        );
                      }),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
