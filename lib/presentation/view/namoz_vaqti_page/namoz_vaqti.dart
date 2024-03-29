import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';
import 'package:namoz_najotdir/core/themes/app_colors.dart';
import 'package:namoz_najotdir/presentation/components/size_konfig.dart';
import 'package:namoz_najotdir/presentation/view/namoz_vaqti_page/widget/container_app.dart';
import 'package:namoz_najotdir/presentation/view/namoz_vaqti_page/widget/namoz_vaqti_builder.dart';
import 'package:namoz_najotdir/presentation/view/namoz_vaqti_page/widget/time_widget.dart';
import 'package:namoz_najotdir/core/services/service_islam.dart';

class NamozVaqti extends StatefulWidget {
  const NamozVaqti({Key? key}) : super(key: key);

  @override
  State<NamozVaqti> createState() => _NamozVaqtiState();
}

class _NamozVaqtiState extends State<NamozVaqti> {
  @override
  Widget build(BuildContext context) => SlideInUp(
        child: SlideInUp(
          child: Scaffold(
            backgroundColor: AppColors.backgroundColor,
            body: Column(
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: wi(16)),
                  child: Column(
                    children: const [
                      ForAppContainer(),
                      NamozVaqtiTime(),
                    ],
                  ),
                ),
                Container(
                  height: he(585),
                  color: Colors.transparent,
                  child: FutureBuilder(
                    future: ServiceIslam.getIslamData(),
                    builder: (BuildContext context, AsyncSnapshot snapshot) {
                      if (!snapshot.hasData) {
                        return Center(
                          // ! loading_animation_widget paket
                          child: LoadingAnimationWidget.hexagonDots(
                            color:  AppColors.primaryColor,
                            size: 50,
                          ),
                        );
                      } else if (snapshot.hasError) {
                        return Text(snapshot.hasError.toString());
                      } else {
                        return const NamozVaqtiBuilder();
                      }
                    },
                  ),
                )
              ],
            ),
          ),
        ),
      );
}
