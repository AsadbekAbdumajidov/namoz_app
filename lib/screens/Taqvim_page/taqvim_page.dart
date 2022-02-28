import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:namoz_najotdir/data/data.dart';
import 'package:namoz_najotdir/screens/Taqvim_page/widget/container_green_widget.dart';

class TaqvimPage extends StatefulWidget {
  const TaqvimPage({Key? key}) : super(key: key);

  @override
  _TaqvimPageState createState() => _TaqvimPageState();
}

class _TaqvimPageState extends State<TaqvimPage> {
  @override
  Widget build(BuildContext context) => SlideInUp(
        child: SlideInLeft(
          child: Scaffold(
            backgroundColor: const Color.fromRGBO(238, 238, 238, 1),
            appBar: barApp(context),
            body: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 5),
              child: Column(
                children: [
                  SlideInLeft(
                    child:  const ContainerGreenWidget(),
                          
                        ),
                  
                ],
              ),
            ),
          ),
        ),
      );

  AppBar barApp(BuildContext context) {
    return AppBar(
      backgroundColor: const Color.fromRGBO(238, 238, 238, 1),
      elevation: 0,
      toolbarHeight: MediaQuery.of(context).size.height * 0.07,
      centerTitle: true,
      leading: Padding(
        padding: const EdgeInsets.only(top: 5, left: 15),
        child: InkWell(
          onTap: () {
            Navigator.pushNamed(context, '/home');
          },
          child: const CircleAvatar(
            backgroundColor: Colors.white,
            child: Icon(
              Icons.arrow_back_ios_new,
              color: Color.fromRGBO(12, 114, 100, 1),
              size: 25,
            ),
          ),
        ),
      ),
      title: Text(
        Data.boshMenu[2].toString(),
        style: const TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.bold,
            fontSize: 25,
            fontFamily: "Fonts"),
      ),
      actions: [
        Padding(
          padding: const EdgeInsets.only(right: 10),
          child: IconButton(
            onPressed: () {
              Navigator.pushNamed(context, '/haqimizda');
            },
            icon: const Icon(
              Icons.help_outline_rounded,
              size: 34,
              color: Color.fromRGBO(12, 114, 100, 1),
            ),
          ),
        )
      ],
    );
  }
}
