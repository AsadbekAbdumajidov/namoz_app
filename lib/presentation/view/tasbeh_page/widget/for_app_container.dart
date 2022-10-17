import 'package:flutter/material.dart';
import 'package:namoz_najotdir/core/data/data.dart';

class ForAppCont extends StatefulWidget {
  const ForAppCont({Key? key}) : super(key: key);

  @override
  State<ForAppCont> createState() => _ForAppContState();
}

class _ForAppContState extends State<ForAppCont> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.12,
      width: MediaQuery.of(context).size.width,
      color: const Color.fromRGBO(238, 238, 238, 100),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15,vertical: 10),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.end,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            InkWell(
              onTap: () {
                Navigator.pushNamed(context, '/home');
              },
              child: const CircleAvatar(
                radius: 23,
                backgroundColor: Colors.white,
                child: Icon(
                  Icons.arrow_back_ios_new,
                  color: Color.fromRGBO(12, 114, 100, 1),
                  size: 25,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 10),
              child: Text(
                Data.boshMenu[3].toString(),
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
