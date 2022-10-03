import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:namoz_najotdir/data/duolar_data.dart';

class DuolarGreenWidget extends StatefulWidget {
  final int? index;
  const DuolarGreenWidget({Key? key, this.index}) : super(key: key);

  @override
  State<DuolarGreenWidget> createState() => _GreenConWidgetState();
}

class _GreenConWidgetState extends State<DuolarGreenWidget> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
          horizontal: MediaQuery.of(context).size.width * 0.04,
          vertical: MediaQuery.of(context).size.width * 0.03),
      child: SlideInLeft(
        child: SizedBox(
          height: MediaQuery.of(context).size.height * 0.85,
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
                  padding: EdgeInsets.symmetric(
                      vertical: MediaQuery.of(context).size.width * 0.03),
                  child: Text(
                    Duolar.duolar[widget.index!]["name"].toString(),
                    style:  TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: MediaQuery.of(context).size.height * 0.024,
                        fontFamily: 'balo'),
                    maxLines: 1,
                  ),
                ),
                Container(
                  height: MediaQuery.of(context).size.height * 0.77,
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
                            horizontal:
                                MediaQuery.of(context).size.width * 0.03,
                            vertical: MediaQuery.of(context).size.width * 0.04),
                        child: Column(
                          children: [
                            Text(
                              Duolar.duolar[widget.index!]["manosi"].toString(),
                              style: const TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold,
                                  fontFamily: 'balo'),
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
