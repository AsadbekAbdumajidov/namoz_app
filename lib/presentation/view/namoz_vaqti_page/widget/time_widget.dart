import 'package:flutter/material.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';
import 'package:namoz_najotdir/core/const_islam.dart';
import 'package:namoz_najotdir/core/themes/app_colors.dart';
import 'package:namoz_najotdir/presentation/components/size_konfig.dart';
import 'package:namoz_najotdir/presentation/view/namoz_vaqti_page/widget/kun_widget.dart';
import 'package:namoz_najotdir/core/services/service_islam.dart';

class NamozVaqtiTime extends StatefulWidget {
  const NamozVaqtiTime({Key? key}) : super(key: key);

  @override
  State<NamozVaqtiTime> createState() => _NamozVaqtiTimeState();
}

class _NamozVaqtiTimeState extends State<NamozVaqtiTime> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: he(200),
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.all(
          Radius.circular(15),
        ),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 2,
            blurRadius: 7,
            offset: const Offset(0, 5),
          ),
        ],
        image: const DecorationImage(
            image: AssetImage("assets/images/maschid.jpg"), fit: BoxFit.cover),
        border: Border.all(width: 0.5, color: Colors.black38),
      ),
      child: Padding(
        padding: EdgeInsets.symmetric(
            horizontal: MediaQuery.of(context).size.height * 0.02,
            vertical: MediaQuery.of(context).size.height * 0.005),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              height: MediaQuery.of(context).size.height * 0.08,
              width: MediaQuery.of(context).size.width * 0.8,
              decoration: const BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage("assets/images/lampa_foto.png"),
                      fit: BoxFit.cover)),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const KunWidget(),
                Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text(
                      ConstIslam.ayniQaysiNamoz(),
                      style: const TextStyle(
                          color: Colors.black,
                          fontSize: 16,
                          fontWeight: FontWeight.bold),
                    ),
                    FutureBuilder(
                      future: ServiceIslam.getIslamData(),
                      builder: (BuildContext context, AsyncSnapshot snapshot) {
                        if (!snapshot.hasData) {
                          return Center(
                            // ! loading_animation_widget paket
                            child: LoadingAnimationWidget.hexagonDots(
                              color:  AppColors.primaryColor,
                              size: 20,
                            ),
                          );
                        } else if (snapshot.hasError) {
                          return Text(snapshot.hasError.toString());
                        } else {
                          return Text(
                            ConstIslam.ayniNamozVaqti(),
                            style: const TextStyle(
                                color: Colors.blueGrey,
                                fontSize: 45,
                                fontWeight: FontWeight.bold),
                          );
                        }
                      },
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
