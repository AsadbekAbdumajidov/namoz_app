import 'package:animate_do/animate_do.dart';
import 'package:animated_card/animated_card.dart';
import 'package:flutter/material.dart';
import 'package:namoz_najotdir/data/kalima_data.dart';
import 'package:namoz_najotdir/screens/kalima_page/widget/list_tile.dart';

class Builderwidget extends StatefulWidget {
  const Builderwidget({Key? key}) : super(key: key);

  @override
  _BuilderwidgetState createState() => _BuilderwidgetState();
}

class _BuilderwidgetState extends State<Builderwidget> {
  bool customTileExpanded = false;
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 6,
      physics: const BouncingScrollPhysics(),
      itemBuilder: (_, __) {
        return Padding(
          padding: const EdgeInsets.only(top: 10),
          child: SlideInLeft(
            child: AnimatedCard(
              curve: Curves.fastOutSlowIn,
          direction: AnimatedCardDirection.left,
          initDelay: const Duration(milliseconds: 0),
          duration: const Duration(seconds: 1),
              child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: Card(
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                    side: BorderSide.none),
                child: ExpansionTile(
                  controlAffinity: ListTileControlAffinity.trailing,
                  leading: CircleAvatar(
                    radius: 32,
                    backgroundImage: const AssetImage("assets/images/aylana.png"),
                    backgroundColor: Colors.white,
                    child: Padding(
                      padding: const EdgeInsets.only(top: 4),
                      child: Text(
                        "${__ + 1}",
                        style: const TextStyle(
                            fontWeight: FontWeight.bold, fontFamily: 'balo',color: Color.fromRGBO(12, 114, 100, 1),fontSize: 18,),
                      ),
                    ),
                  ),
                  title: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 20),
                        child: Text(
                          DataKalima.name[__],
                          style: const TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                              fontFamily: 'fonts'),
                        ),
                      ),
                    ],
                  ),
                  children: [
                    ListTileWidget(index: __),
                  ],
                ),
              ),
            ),)
          ),
        );
      },
    );
  }
}
