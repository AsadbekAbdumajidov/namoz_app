import 'package:flutter/material.dart';
import 'package:namoz_najotdir/core/data/namoz_data.dart';
import 'package:namoz_najotdir/presentation/components/size_konfig.dart';
import 'package:namoz_najotdir/presentation/view/namoz_page/widget/attahiyot_surasi.dart';
import 'package:namoz_najotdir/presentation/view/namoz_page/widget/salom_widget.dart';
import 'package:namoz_najotdir/presentation/view/namoz_page/widget/suralar_widget.dart';

class WhiteContainerWidget extends StatefulWidget {
  const WhiteContainerWidget({Key? key}) : super(key: key);

  @override
  State<WhiteContainerWidget> createState() => _WhiteContainerWidgetState();
}

class _WhiteContainerWidgetState extends State<WhiteContainerWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: he(635),
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
                horizontal: wi(14),
                vertical: he(12)),
            child: Column(
              children: [
                Container(
                  height: he(300),
                  width: wi(250),
                  decoration: BoxDecoration(
                    color: Colors.transparent,
                    image: DecorationImage(
                        image:
                            AssetImage(DataNamoz.gif[DataNamoz.son].toString()),
                        fit: BoxFit.cover),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                      top: he(10)),
                  child: Text(
                    DataNamoz.text[DataNamoz.son].toString(),
                    style: const TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontFamily: "balo"),
                  ),
                ),
                DataNamoz.son == 3
                    ? const SuralarWidget()
                    : DataNamoz.son == 12
                        ? const AttahiyotSurasi()
                        : DataNamoz.son == 13 ? const SalomWidget(): const SizedBox.shrink(),
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
    } else if (DataNamoz.son == 13 || DataNamoz.son == 12||DataNamoz.son == 5) {
      return const BouncingScrollPhysics();
    } else {
      return const NeverScrollableScrollPhysics();
    }
  }

  itemExtent() {
    if (DataNamoz.son == 3 ) {
      return he(2710);
    } else if (DataNamoz.son == 12) {
      return he(1100);
    }else if (DataNamoz.son == 13) {
      return he(1750);
    }
    else if (DataNamoz.son == 5) {
      return he(750);
    } else {
      return he(650);
    }
  }
}
