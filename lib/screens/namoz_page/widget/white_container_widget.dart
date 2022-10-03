import 'package:flutter/material.dart';
import 'package:namoz_najotdir/data/namoz_data.dart';
import 'package:namoz_najotdir/screens/namoz_page/widget/suralar_widget.dart';

class WhiteContainerWidget extends StatefulWidget {
  const WhiteContainerWidget({Key? key}) : super(key: key);

  @override
  State<WhiteContainerWidget> createState() => _WhiteContainerWidgetState();
}

class _WhiteContainerWidgetState extends State<WhiteContainerWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.685,
      width: MediaQuery.of(context).size.width,
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(30),
          topRight: Radius.circular(30),
          bottomLeft: Radius.circular(15),
          bottomRight: Radius.circular(15),
        ),
      ),
      child: ListView.builder(
        physics: physics(),
        itemExtent: itemExtent(),
        itemCount: 1,
        itemBuilder: (BuildContext context, int index) {
          return Padding(
            padding: EdgeInsets.symmetric(
                horizontal: MediaQuery.of(context).size.width * 0.03,
                vertical: MediaQuery.of(context).size.height * 0.02),
            child: Column(
              children: [
                Container(
                  height: MediaQuery.of(context).size.height * 0.3,
                  width: MediaQuery.of(context).size.width * 0.8,
                  decoration: BoxDecoration(
                    color: Colors.transparent,
                    image: DecorationImage(
                        image:
                            AssetImage(DataNamoz.gif[DataNamoz.son].toString()),
                        fit: BoxFit.cover),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top:  MediaQuery.of(context).size.height * 0.02),
                  child: Text(
                    DataNamoz.text[DataNamoz.son].toString(),
                    style: const TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontFamily: "balo"),
                  ),
                ),
                DataNamoz.son != 3 ? Container() : const SuralarWidget(),
              ],
            ),
          );
        },
      ),
    );
  }

  physics() {
    if (DataNamoz.son == 3) {
      return const BouncingScrollPhysics();
    } else if (DataNamoz.son == 13) {
      return const BouncingScrollPhysics();
    } else {
      return const NeverScrollableScrollPhysics();
    }
  }

  itemExtent() {
    if (DataNamoz.son == 3) {
      return MediaQuery.of(context).size.height * 2.55;
    } else if (DataNamoz.son == 13) {
      return MediaQuery.of(context).size.height * 0.84;
    } else {
      return MediaQuery.of(context).size.height * 0.72;
    }
  }
}
