import 'package:animate_do/animate_do.dart';
import 'package:animated_card/animated_card.dart';
import 'package:flutter/material.dart';
import 'package:namoz_najotdir/data/duolar_data.dart';

class WidgetBuilderDuolar extends StatefulWidget {
  const WidgetBuilderDuolar({Key? key}) : super(key: key);

  @override
  State<WidgetBuilderDuolar> createState() => _WidgetBuilderDuolarState();
}

class _WidgetBuilderDuolarState extends State<WidgetBuilderDuolar> {
  var list = List.generate(28, (index) => index);
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: list.length,
      physics: const BouncingScrollPhysics(),
      itemBuilder: (_, __) {
        return AnimatedCard(
          // ! Animated_card Paket
          curve: Curves.fastOutSlowIn,
          direction: AnimatedCardDirection.left,
          initDelay: const Duration(milliseconds: 0),
          duration: const Duration(seconds: 1),
          child: Padding(
            padding: const EdgeInsets.only(top: 10),
            child: SlideInLeft(
              child: Card(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15),
                    side: BorderSide.none),
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 8),
                  child: ListTile(
                    onTap: () {
                      Navigator.pushNamed(context, "/duoCon",arguments: __);
                    },
                    leading: CircleAvatar(
                      radius: 32,
                      backgroundImage:
                          const AssetImage("assets/images/aylana.png"),
                      backgroundColor: Colors.white,
                      child: Text(
                        "${__ + 1}",
                        style: const TextStyle(
                        fontWeight: FontWeight.bold, fontFamily: 'balo'),
                      ),
                    ),
                    title: Text(
                      Duolar.duolar[__]["name"],
                      style: const TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                          fontFamily: 'fonts'),
                    ),
                    trailing: const Icon(
                      Icons.arrow_forward_ios_rounded,
                      color: Color.fromRGBO(12, 114, 100, 1),
                    ),
                  ),
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
