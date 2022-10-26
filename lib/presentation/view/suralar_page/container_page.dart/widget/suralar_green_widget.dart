import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:namoz_najotdir/presentation/components/audio_player.dart';
import 'package:namoz_najotdir/presentation/components/size_konfig.dart';
import 'package:namoz_najotdir/core/data/suralar_data.dart';

class SuralarGreenWidget extends StatefulWidget {
  const SuralarGreenWidget({Key? key, required this.index}) : super(key: key);
  final int index;
  @override
  State<SuralarGreenWidget> createState() => _GreenConWidgetState();
}

class _GreenConWidgetState extends State<SuralarGreenWidget> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: wi(14)),
      child: SlideInLeft(
        child: SizedBox(
          height: he(780),
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
                    Suralar.suralar[widget.index]["name"].toString(),
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: he(30),
                        fontFamily: 'balo'),
                    maxLines: 1,
                  ),
                ),
                Container(
                  height: he(700),
                  width: MediaQuery.of(context).size.width * 0.9,
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(25),
                      topRight: Radius.circular(25),
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
                              Suralar.suralar[widget.index]["manosi"]
                                  .toString(),
                              style: const TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold,
                                  fontFamily: 'balo'),
                            ),
                            Padding(
                              padding: EdgeInsets.symmetric(vertical: he(16)),
                              child: Text(
                                Suralar.suralar[widget.index]["arabTili"]
                                    .toString(),
                                textAlign: TextAlign.center,
                                style: const TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold,
                                    fontFamily: 'balo'),
                              ),
                            ),
                            AudioPlayerWidget(
                              name: Suralar.suralar[widget.index]["name"],
                              url: Suralar.suralar[widget.index]["mp3"],
                              index: widget.index,
                            )
                          ],
                        ),
                      );
                    },
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
