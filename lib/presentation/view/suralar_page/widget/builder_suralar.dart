import 'package:animate_do/animate_do.dart';
import 'package:animated_card/animated_card.dart';
import 'package:flutter/material.dart';
import 'package:namoz_najotdir/presentation/components/size_konfig.dart';

class WidgetBuilderSuralar extends StatelessWidget {
  const WidgetBuilderSuralar(
      {Key? key, required this.index, required this.name, this.onTap})
      : super(key: key);
  final int index;
  final String name;
  final Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return AnimatedCard(
      // ! Animated_card Paket
      curve: Curves.fastOutSlowIn,
      direction: AnimatedCardDirection.left,
      initDelay: const Duration(milliseconds: 0),
      duration: const Duration(seconds: 1),
      child: Padding(
        padding:  EdgeInsets.only(top: he(10)),
        child: SlideInLeft(
          child: Card(
            clipBehavior: Clip.antiAliasWithSaveLayer,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15), side: BorderSide.none),
            child: Padding(
              padding:  EdgeInsets.symmetric(vertical: he(10)),
              child: ListTile(
                onTap: onTap, 
                
                leading: CircleAvatar(
                  radius: he(40),
                  backgroundImage: const AssetImage("assets/images/aylana.png"),
                  backgroundColor: Colors.white,
                  child: Text(
                    "${index + 1}",
                    style: const TextStyle(
                        fontWeight: FontWeight.bold, fontFamily: 'balo'),
                  ),
                ),
                title: Text(
                  name,
                  style:  TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: he(23),
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
  }
}
