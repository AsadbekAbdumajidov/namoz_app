import 'package:flutter/material.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';
import 'package:namoz_najotdir/core/themes/app_colors.dart';
import 'package:namoz_najotdir/presentation/components/size_konfig.dart';
import 'package:namoz_najotdir/presentation/view/Taqvim_page/widget/sana_widget.dart';
import 'package:namoz_najotdir/presentation/view/Taqvim_page/widget/widget_data.dart';
import 'package:namoz_najotdir/presentation/view/Taqvim_page/widget/widget_kun.dart';
import 'package:namoz_najotdir/presentation/view/Taqvim_page/widget/widget_time.dart';
import 'package:namoz_najotdir/core/services/service_islam.dart';

class ContainerWhiteWidget extends StatefulWidget {
  const ContainerWhiteWidget({Key? key}) : super(key: key);

  @override
  State<ContainerWhiteWidget> createState() => _ContainerWhiteWidgetState();
}

class _ContainerWhiteWidgetState extends State<ContainerWhiteWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: he(625),
      width: wi(309),
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(30),
          topRight: Radius.circular(30),
        ),
      ),
      child: FutureBuilder(
        future: ServiceIslam.getIslamData(),
        builder: (BuildContext context, AsyncSnapshot snapshot) {
          if (!snapshot.hasData) {
            return Center(
              child: LoadingAnimationWidget.hexagonDots(
                color:  AppColors.primaryColor,
                size: 50,
              ),
            );
          } else if (snapshot.hasError) {
            return Text(snapshot.hasError.toString());
          } else {
            return Column(
              children: [
                SizedBox(
                  height: he(70),
                  width: MediaQuery.of(context).size.width,
                  child: Row(
                    children: [
                     const SanaWidget(),
                      SizedBox(
                        height: he(625),
                        width: wi(257),
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
                  height: he(555),
                  width: MediaQuery.of(context).size.width,
                  decoration:  BoxDecoration(
                      borderRadius: BorderRadius.circular(20)),
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
