import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:namoz_najotdir/core/data/data.dart';
import 'package:namoz_najotdir/presentation/components/custom_app_bar.dart';
import 'package:namoz_najotdir/presentation/components/size_konfig.dart';
import 'package:namoz_najotdir/presentation/view/kalima_page/widget/builder_widget.dart';

class KalimaPage extends StatefulWidget {
  const KalimaPage({Key? key}) : super(key: key);

  @override
  State<KalimaPage> createState() => _KalimaPageState();
}

class _KalimaPageState extends State<KalimaPage> {
  @override
  Widget build(BuildContext context) => SlideInUp(
        child: Scaffold(
          backgroundColor: const Color.fromRGBO(238, 238, 238, 1),
          appBar: CustomAppbar(
              statusHeight: 0,
              onRightTap: () {
                Navigator.pushNamed(context, '/haqimizda');
              },
              title: Data.boshMenu[6].toString()),
          body: Stack(
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Container(
                    height: he(170),
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage("assets/images/maschid.jpg"),
                          fit: BoxFit.cover),
                    ),
                  ),
                ],
              ),
              Positioned(
                child: SizedBox(
                  height: MediaQuery.of(context).size.height,
                  width: MediaQuery.of(context).size.width,
                  child:const Builderwidget(),
                ),
              ),
            ],
          ),
        ),
      );

}
