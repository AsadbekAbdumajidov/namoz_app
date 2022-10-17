import 'package:animate_do/animate_do.dart';
import 'package:animated_card/animated_card.dart';
import 'package:flutter/material.dart';
import 'package:namoz_najotdir/presentation/view/hadis_page/widget/title_widget.dart';

class WidgetBuilderHadis extends StatefulWidget {
  const WidgetBuilderHadis({Key? key}) : super(key: key);

  @override
  State<WidgetBuilderHadis> createState() => _WidgetBuilderState();
}

class _WidgetBuilderState extends State<WidgetBuilderHadis> {
  var lista = List.generate(101, (index) => index);
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
                child: ListTile(
                  onTap: () {
                    Navigator.pushNamed(context, "/HadisCon",arguments: __);
                  },
                  leading: CircleAvatar(
                    radius: 32,
                    backgroundImage:
                        const AssetImage("assets/images/aylana.png"),
                    backgroundColor: Colors.white,
                    child: Center(
                        child: Text(
                      "${__ + 1}",
                      style: const TextStyle(
                          fontWeight: FontWeight.bold, fontFamily: 'balo'),
                    )),
                  ),
                  title: TitleWidgetHadis(index: __),
                  trailing: const Icon(
                    Icons.arrow_forward_ios_rounded,
                    color: Color.fromRGBO(12, 114, 100, 1),
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
