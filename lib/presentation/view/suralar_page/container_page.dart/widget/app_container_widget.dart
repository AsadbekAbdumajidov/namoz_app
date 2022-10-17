import 'package:flutter/material.dart';
import 'package:namoz_najotdir/core/data/data.dart';

class SuralarContainerWidget extends StatefulWidget {
  const SuralarContainerWidget({Key? key}) : super(key: key);

  @override
  State<SuralarContainerWidget> createState() => _AppContainerState();
}

class _AppContainerState extends State<SuralarContainerWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.11,
      width: MediaQuery.of(context).size.width,
      color: const Color.fromRGBO(238, 238, 238, 1),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.end,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            CircleAvatar(
            backgroundColor: Colors.white,
            child: IconButton(
              splashRadius: 30,
              onPressed: () {
                Navigator.pop(context);
              },
              icon: const Icon(
                Icons.arrow_back_ios_new,
                color: Color.fromRGBO(12, 114, 100, 1),
                size: 25,
              ),
            )),
            Padding(
              padding: const EdgeInsets.only(bottom: 10),
              child: Text(
                Data.boshMenu[10].toString(),
                style: const TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 25,
                    fontFamily: "Fonts"),
              ),
            ),
            IconButton(
              onPressed: () {
                Navigator.pushNamed(context, '/haqimizda');
              },
              icon: const Icon(
                Icons.help_outline_rounded,
                size: 36,
                color: Color.fromRGBO(12, 114, 100, 1),
              ),
            )
          ],
        ),
      ),
    );
  }
}
