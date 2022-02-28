import 'package:flutter/material.dart';
import 'package:namoz_najotdir/data/namoz_data.dart';

class TabloNamozwidget extends StatefulWidget {
  const TabloNamozwidget({Key? key}) : super(key: key);

  @override
  _TabloNamozwidgetState createState() => _TabloNamozwidgetState();
}

class _TabloNamozwidgetState extends State<TabloNamozwidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.05,
      width: MediaQuery.of(context).size.width * 0.3,
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
        padding: const EdgeInsets.symmetric(horizontal: 13),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "${DataNamoz.son}",
              style: const TextStyle(
                  color: Color.fromRGBO(12, 114, 100, 1),
                  fontWeight: FontWeight.bold,
                  fontSize: 20),
            ),
            const Text(
              "|",
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 25,
                  fontWeight: FontWeight.bold),
            ),
            const Text(
              "13",
              style: TextStyle(
                  color: Colors.black54,
                  fontWeight: FontWeight.bold,
                  fontSize: 20),
            ),
          ],
        ),
      ),
    );
  }
}
