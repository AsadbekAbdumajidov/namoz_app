import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:namoz_najotdir/core/data/data.dart';
import 'package:namoz_najotdir/presentation/components/custom_app_bar.dart';
import 'package:namoz_najotdir/presentation/components/size_konfig.dart';
import 'package:namoz_najotdir/presentation/view/99_ism_page/widget/widget_builder.dart';

class IsmlarPage extends StatefulWidget {
  const IsmlarPage({Key? key}) : super(key: key);

  @override
  State<IsmlarPage> createState() => _IsmlarPageState();
}

class _IsmlarPageState extends State<IsmlarPage> {
  @override
  Widget build(BuildContext context) => SlideInUp(
        child: Scaffold(
          backgroundColor: const Color.fromRGBO(238, 238, 238, 1),
          appBar: CustomAppbar(
              statusHeight: 0,
              onRightTap: () {
                Navigator.pushNamed(context, '/haqimizda');
              },
              title: Data.boshMenu[8].toString()),
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
                child: Padding(
                  padding:  EdgeInsets.symmetric(horizontal: wi(10)),
                  child: SizedBox(
                    height: MediaQuery.of(context).size.height,
                    width: MediaQuery.of(context).size.width,
                    child:const WidgetBuilderIsmlar(),
                  ),
                ),
              ),
            ],
          ),
        ),
      );
}
