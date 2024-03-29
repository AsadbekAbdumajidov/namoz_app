import 'package:flutter/material.dart';
import 'package:namoz_najotdir/core/themes/app_colors.dart';
import 'package:namoz_najotdir/presentation/components/size_konfig.dart';
import 'package:namoz_najotdir/core/data/namoz_data.dart';

class SalomWidget extends StatefulWidget {
  const SalomWidget({Key? key}) : super(key: key);

  @override
  State<SalomWidget> createState() => _SalomWidgetState();
}

class _SalomWidgetState extends State<SalomWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: he(1160),
      decoration: const BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(15))),
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.symmetric(
                vertical: he(20)),
            child: Container(
              decoration: BoxDecoration(
                border: Border.all(
                  width: 0.5,
                  color:  AppColors.primaryColor,
                ),
                borderRadius: const BorderRadius.all(
                  Radius.circular(15),
                ),
              ),
              child: Column(
                children: [
                  Padding(
                    padding: EdgeInsets.symmetric(
                        vertical: he(5), horizontal: wi(8)),
                    child: Text(
                      DataNamoz.salom[0],
                      style: const TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontFamily: "balo"),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(
                        vertical: he(5), horizontal: wi(5)),
                    child: Text(
                      DataNamoz.salom[2],
                      style: const TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(
                        vertical: he(5), horizontal: wi(8)),
                    child: Text(
                      DataNamoz.salom[1],
                      style: const TextStyle(
                          color: Colors.black, fontFamily: "balo"),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Text(
            DataNamoz.salom[3],
            style: const TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
                fontFamily: "balo"),
          ),
          Padding(
            padding: EdgeInsets.symmetric(
                vertical: he(20)),
            child: Container(
              decoration: BoxDecoration(
                border: Border.all(
                  width: 0.5,
                  color:  AppColors.primaryColor,
                ),
                borderRadius: const BorderRadius.all(
                  Radius.circular(15),
                ),
              ),
              child: Column(
                children: [
                  Padding(
                    padding: EdgeInsets.symmetric(
                        vertical: he(5), horizontal: wi(8)),
                    child: Text(
                      DataNamoz.salom[4],
                      style: const TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontFamily: "balo"),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(5),
                    child: Text(
                      DataNamoz.salom[6],
                      style: const TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(
                        vertical: he(5), horizontal: wi(8)),
                    child: Text(
                      DataNamoz.salom[5],
                      style: const TextStyle(
                          color: Colors.black, fontFamily: "balo"),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Text(
            DataNamoz.salom[7],
            style: const TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
                fontFamily: "balo"),
          ),
        ],
      ),
    );
  }
}
