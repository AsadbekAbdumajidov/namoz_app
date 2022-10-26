import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:namoz_najotdir/core/data/data.dart';
import 'package:namoz_najotdir/presentation/components/custom_app_bar.dart';
import 'package:namoz_najotdir/presentation/view/hadis_page/widget/widget_builder.dart';

class HadisPage extends StatefulWidget {
  const HadisPage({Key? key}) : super(key: key);

  @override
  State<HadisPage> createState() => _HadisPageState();
}

class _HadisPageState extends State<HadisPage> {
  @override
  Widget build(BuildContext context) => SlideInUp(
        child: Scaffold(
          backgroundColor: const Color.fromRGBO(238, 238, 238, 1),
          appBar:CustomAppbar(
              statusHeight: 0,
              onRightTap: null,
              title: Data.boshMenu[7].toString()),
          body: Stack(
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Container(
                    height: MediaQuery.of(context).size.height * 0.17,
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage("assets/images/maschid.jpg"),
                          fit: BoxFit.cover),
                    ),
                  ),
                ],
              ),
              Positioned(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: SizedBox(
                    height: MediaQuery.of(context).size.height,
                    width: MediaQuery.of(context).size.width,
                    child:const WidgetBuilderHadis(),
                  ),
                ),
              ),
            ],
          ),
        ),
      );
}
