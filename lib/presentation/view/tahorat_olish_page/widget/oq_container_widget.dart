import 'package:flutter/material.dart';
import 'package:namoz_najotdir/core/data/data_tahorat_olish.dart';
import 'package:namoz_najotdir/presentation/components/size_konfig.dart';

import 'duo_widget.dart';

class OqContainerWidget extends StatelessWidget {
  const OqContainerWidget({Key? key, required this.son}) : super(key: key);
  final int son;
  
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
        physics: DataTahoratOlish.son != 9
            ? const NeverScrollableScrollPhysics()
            : const BouncingScrollPhysics(),
        itemExtent: DataTahoratOlish.son != 9 ? he(620) : he(1000),
        itemCount: 1,
        itemBuilder: (BuildContext context, int index) {
          return Padding(
            padding: EdgeInsets.symmetric(horizontal: wi(20), vertical: he(15)),
            child: Column(
              children: [
                Container(
                  height: he(300),
                  width: wi(790),
                  decoration: BoxDecoration(
                    color: Colors.transparent,
                    image: DecorationImage(
                        image: AssetImage(DataTahoratOlish
                            .gif[son]
                            .toString()),
                        fit: BoxFit.contain),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: he(15), bottom: wi(10)),
                  child: Text(
                    DataTahoratOlish.text[son].toString(),
                    style: TextStyle(
                        fontSize: he(20),
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontFamily: "balo"),
                  ),
                ),
                DataTahoratOlish.son != 9 ? Container() : const DuoWidget(),
              ],
            ),
          );
        },
      ),
    );
  }
}
