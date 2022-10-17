import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';
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
            backgroundColor: const Color.fromRGBO(238, 238, 238, 1),
            body: Column(
              children: [
                const ForAppContainer(),
                const NamozVaqtiTime(),
                Container(
                  height: MediaQuery.of(context).size.height * 0.686,
                  color: Colors.transparent,
                  child: FutureBuilder(
                    future: ServiceIslam.getIslamData(),
                    builder: (BuildContext context, AsyncSnapshot snapshot) {
                      if (!snapshot.hasData) {
                        return Center(
                          // ! loading_animation_widget paket
                          child: LoadingAnimationWidget.hexagonDots(
                            color: const Color.fromRGBO(12, 114, 100, 1),
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
