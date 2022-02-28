import 'package:flutter/material.dart';
import 'package:namoz_najotdir/data/data_tahorat_olish.dart';

class DuoWidget extends StatefulWidget {
  const DuoWidget({Key? key}) : super(key: key);

  @override
  _DuoWidgetState createState() => _DuoWidgetState();
}

class _DuoWidgetState extends State<DuoWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.4,
      decoration: const BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(15))),
      child: ListView.builder(
        itemCount: DataTahoratOlish.sura.length,
        physics: const NeverScrollableScrollPhysics(),
        itemBuilder: (_, __) {
          return Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(bottom: 15),
                child: Container(
                  decoration: BoxDecoration(
                    border: Border.all(
                      width: 0.5,
                      color: const Color.fromRGBO(12, 114, 100, 1),
                    ),
                    borderRadius: const BorderRadius.all(
                      Radius.circular(15),
                    ),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(10),
                    child: Column(
                      children: [
                        Text(
                          DataTahoratOlish.sura[__],
                          style: const TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 10),
                          child: Text(
                            DataTahoratOlish.manosi[__],
                            style: const TextStyle(
                                color: Colors.black, fontFamily: "balo"),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}
