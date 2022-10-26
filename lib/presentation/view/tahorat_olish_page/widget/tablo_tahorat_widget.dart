import 'package:flutter/material.dart';
import 'package:namoz_najotdir/presentation/components/size_konfig.dart';

class TabloWidget extends StatelessWidget {
  const TabloWidget({Key? key, required this.index}) : super(key: key);
  final int index;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: he(50),
      width: wi(80),
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border.all(
          width: 0.5,
          color: const Color.fromRGBO(12, 114, 100, 1),
        ),
        borderRadius: const BorderRadius.all(
          Radius.circular(10),
        ),
      ),
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: wi(13)),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "$index",
              style: TextStyle(
                  color: const Color.fromRGBO(12, 114, 100, 1),
                  fontWeight: FontWeight.bold,
                  fontSize: he(20)),
            ),
            const Text(
              "|",
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 25,
                  fontWeight: FontWeight.bold),
            ),
            Text(
              "9",
              style: TextStyle(
                  color: Colors.black54,
                  fontWeight: FontWeight.bold,
                  fontSize: he(20)),
            ),
          ],
        ),
      ),
    );
  }
}
