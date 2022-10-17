import 'dart:async';
import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';

class DurationPage extends StatefulWidget {
  const DurationPage({Key? key}) : super(key: key);

  @override
  State<DurationPage> createState() => _DurationPageState();
}

class _DurationPageState extends State<DurationPage> {
  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 3), () {
      setState(() {
        Navigator.pushNamedAndRemoveUntil(context, '/home', (route) => false);
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return FadeInUp(
      child: Container(
        color: const Color.fromRGBO(19, 84, 76, 1),
        child: Column(
          children: [
            Container(
              height: MediaQuery.of(context).size.height * 0.47,
              decoration: const BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage("assets/images/duration1.png"))),
            ),
            Container(
              height: MediaQuery.of(context).size.height * 0.4,
              width: MediaQuery.of(context).size.width * 1,
              decoration: const BoxDecoration(
                  image:
                      DecorationImage(image: AssetImage("assets/images/N1.png"))),
            ),
          ],
        ),
      ),
    );
  }
}
