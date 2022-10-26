import 'package:animate_do/animate_do.dart';
import 'package:animated_card/animated_card.dart';
import 'package:flutter/material.dart';
import 'package:namoz_najotdir/core/data/kalima_data.dart';
import 'package:namoz_najotdir/presentation/components/size_konfig.dart';
import 'package:namoz_najotdir/presentation/view/kalima_page/widget/list_tile.dart';

class Builderwidget extends StatefulWidget {
  const Builderwidget({Key? key}) : super(key: key);

  @override
  State<Builderwidget> createState() => _BuilderwidgetState();
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
          padding:  EdgeInsets.only(top: he(10)),
          child: SlideInLeft(
              child: AnimatedCard(
            curve: Curves.fastOutSlowIn,
            direction: AnimatedCardDirection.left,
            initDelay: const Duration(milliseconds: 0),
            duration: const Duration(seconds: 1),
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: wi(12)),
              child: Card(
                clipBehavior: Clip.antiAlias,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15),
                    side: BorderSide.none),
                child: ExpansionTile(
                  controlAffinity: ListTileControlAffinity.trailing,
                  leading: CircleAvatar(
                    radius: he(40),
                    backgroundImage:
                        const AssetImage("assets/images/aylana.png"),
                    backgroundColor: Colors.white,
                    child: Padding(
                      padding: EdgeInsets.only(top: he(4)),
                      child: Text(
                        "${__ + 1}",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontFamily: 'balo',
                          color:const Color.fromRGBO(12, 114, 100, 1),
                          fontSize: he(18),
                        ),
                      ),
                    ),
                  ),
                  title: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding:  EdgeInsets.symmetric(vertical: he(20)),
                        child: Text(
                          DataKalima.name[__],
                          style:  TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: he(22),
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
            ),
          )),
        );
      },
    );
  }
}
