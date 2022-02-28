import 'package:animate_do/animate_do.dart';
import 'package:animated_card/animated_card.dart';
import 'package:flutter/material.dart';
import 'package:namoz_najotdir/screens/99_ism_page/widget/expansion_tile_widget.dart';

class WidgetBuilderIsmlar extends StatefulWidget {
  const WidgetBuilderIsmlar({Key? key}) : super(key: key);

  @override
  _WidgetBuilderState createState() => _WidgetBuilderState();
}

class _WidgetBuilderState extends State<WidgetBuilderIsmlar> {
  var lista = List.generate(99, (index) => index);
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: lista.length,
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
                child: ExpansionTileWidget(indexOf: __),
              ),
            ),
          ),
        );
      },
    );
  }
}
