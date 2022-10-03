import 'package:flutter/material.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';
import 'package:namoz_najotdir/screens/Taqvim_page/widget/sana_widget.dart';
import 'package:namoz_najotdir/screens/Taqvim_page/widget/widget_data.dart';
import 'package:namoz_najotdir/screens/Taqvim_page/widget/widget_kun.dart';
import 'package:namoz_najotdir/screens/Taqvim_page/widget/widget_time.dart';
import 'package:namoz_najotdir/services/service_islam.dart';

class ContainerWhiteWidget extends StatefulWidget {
  const ContainerWhiteWidget({Key? key}) : super(key: key);

  @override
  State<ContainerWhiteWidget> createState() => _ContainerWhiteWidgetState();
}

class _ContainerWhiteWidgetState extends State<ContainerWhiteWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.72,
      width: MediaQuery.of(context).size.width * 0.9,
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(30),
          topRight: Radius.circular(30),
          bottomLeft: Radius.circular(20),
          bottomRight: Radius.circular(20),
        ),
      ),
      child: FutureBuilder(
        future: ServiceIslam.getIslamData(),
        builder: (BuildContext context, AsyncSnapshot snapshot) {
          if (!snapshot.hasData) {
            return Center(
              child: LoadingAnimationWidget.hexagonDots(
                color: const Color.fromRGBO(12, 114, 100, 1),
                size: 50,
              ),
            );
          } else if (snapshot.hasError) {
            return Text(snapshot.hasError.toString());
          } else {
            return Column(
              children: [
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.07,
                  width: MediaQuery.of(context).size.width,
                  child: Row(
                    children: [
                     const SanaWidget(),
                      SizedBox(
                        height: MediaQuery.of(context).size.height * 0.08,
                        width: MediaQuery.of(context).size.width * 0.75,
                        child: ListView.builder(
                          scrollDirection: Axis.horizontal,
                          itemCount: 8,
                          physics: const NeverScrollableScrollPhysics(),
                          itemBuilder: (_, __) {
                            return time(__);
                          },
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  height: MediaQuery.of(context).size.height * 0.65,
                  width: MediaQuery.of(context).size.width,
                  decoration: const BoxDecoration(
                      borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(20),
                          bottomRight: Radius.circular(20))),
                  child: ListView.builder(
                    itemCount: ServiceIslam.datas!.length,
                    physics: const BouncingScrollPhysics(),
                    itemBuilder: (_, __) {
                      return Row(
                        children: [
                          WidgetDate(index: __),
                          WidgetTimes(index: __),
                        ],
                      );
                    },
                  ),
                )
              ],
            );
          }
        },
      ),
    );
  }
}

time(__) {
  if (__ == 0 || __ == 2 || __ == 5 || __ == 8) {
    return Container();
  } else {
    return WidgetKun(index: __);
  }
}
