import 'package:flutter/material.dart';
import 'package:namoz_najotdir/data/data_tahorat_olish.dart';

import 'duo_widget.dart';

class OqContainerWidget extends StatefulWidget {
  const OqContainerWidget({Key? key}) : super(key: key);

  @override
  State<OqContainerWidget> createState() => _OqContainerWidgetState();
}

class _OqContainerWidgetState extends State<OqContainerWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.69,
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
        itemExtent: DataTahoratOlish.son != 9
            ? MediaQuery.of(context).size.height * 0.71
            : MediaQuery.of(context).size.height * 0.87,
        itemCount: 1,
        itemBuilder: (BuildContext context, int index) {
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
            child: Column(
              children: [
                Container(
                  height: MediaQuery.of(context).size.height * 0.3,
                  width: MediaQuery.of(context).size.width * 0.79,
                  decoration: BoxDecoration(
                    color: Colors.transparent,
                    image: DecorationImage(
                        image: AssetImage(DataTahoratOlish
                            .gif[DataTahoratOlish.son]
                            .toString()),
                        fit: BoxFit.contain),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 40, bottom: 10),
                  child: Text(
                    DataTahoratOlish.text[DataTahoratOlish.son].toString(),
                    style: const TextStyle(
                        fontSize: 16,
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
