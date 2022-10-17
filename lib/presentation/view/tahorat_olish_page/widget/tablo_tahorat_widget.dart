import 'package:flutter/material.dart';
import 'package:namoz_najotdir/core/data/data_tahorat_olish.dart';

class TabloWidget extends StatefulWidget {
  const TabloWidget({Key? key}) : super(key: key);

  @override
  State<TabloWidget> createState() => _TabloWidgetState();
}

class _TabloWidgetState extends State<TabloWidget> {
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
              "${DataTahoratOlish.son}",
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
              "9",
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
