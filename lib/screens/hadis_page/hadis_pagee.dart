import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:namoz_najotdir/data/data.dart';
import 'package:namoz_najotdir/screens/hadis_page/widget/widget_builder.dart';

class HadisPage extends StatefulWidget {
  const HadisPage({Key? key}) : super(key: key);

  @override
  _HadisPageState createState() => _HadisPageState();
}

class _HadisPageState extends State<HadisPage> {
  @override
  Widget build(BuildContext context) => SlideInUp(
        child: Scaffold(
          backgroundColor: const Color.fromRGBO(238, 238, 238, 1),
          appBar: appMethod(context),
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

  AppBar appMethod(BuildContext context) {
    return AppBar(
          backgroundColor: const Color.fromRGBO(238, 238, 238, 1),
          elevation: 0,
          toolbarHeight: MediaQuery.of(context).size.height * 0.07,
          centerTitle: true,
          leading: Padding(
            padding: const EdgeInsets.only(top: 5, left: 15),
            child:  CircleAvatar(
                backgroundColor: Colors.white,
                child: IconButton(onPressed: (){Navigator.pushNamed(context, '/home');}, icon:const Icon(
                  Icons.arrow_back_ios_new,
                  color: Color.fromRGBO(12, 114, 100, 1),
                  size: 25,
                ),)
              ),
            ),
          
          title: Text(
            Data.boshMenu[7].toString(),
            style: const TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
                fontSize: 25,
                fontFamily: "Fonts"),
          ),
          
        );
  }
}
