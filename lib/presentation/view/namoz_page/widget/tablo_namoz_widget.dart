import 'package:flutter/material.dart';
import 'package:namoz_najotdir/core/data/namoz_data.dart';
import 'package:namoz_najotdir/core/themes/app_colors.dart';
import 'package:namoz_najotdir/presentation/components/size_konfig.dart';

class TabloNamozwidget extends StatefulWidget {
  const TabloNamozwidget({Key? key}) : super(key: key);

  @override
  State<TabloNamozwidget> createState() => _TabloNamozwidgetState();
}

class _TabloNamozwidgetState extends State<TabloNamozwidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: he(40),
      width: wi(100),
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border.all(
          width: 0.5,
          color:  AppColors.primaryColor,
        ),
        borderRadius: const BorderRadius.all(
          Radius.circular(10),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 13),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "${DataNamoz.son}",
              style: const TextStyle(
                  color: AppColors.primaryColor,
                  fontWeight: FontWeight.bold,
                  fontSize: 20),
            ),
            const Text(
              "|",
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 25,
                  fontWeight: FontWeight.normal),
            ),
            const Text(
              "13",
              style: TextStyle(
                  color: Colors.black54,
                  fontWeight: FontWeight.bold,
                  fontSize: 20),
            ),
          ],
        ),
      ),
    );
  }
}
