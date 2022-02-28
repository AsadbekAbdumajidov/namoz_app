import 'package:flutter/material.dart';
import 'package:namoz_najotdir/data/data.dart';

class AppContainerWidget extends StatefulWidget {
  const AppContainerWidget({Key? key}) : super(key: key);

  @override
  _AppContainerState createState() => _AppContainerState();
}

class _AppContainerState extends State<AppContainerWidget> {
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
            InkWell(
              onTap: () {
                Navigator.pushNamed(context, '/duo');
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
                Data.boshMenu[9].toString(),
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
