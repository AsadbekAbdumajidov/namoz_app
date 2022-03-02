import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:namoz_najotdir/screens/biz_haqimizda_page/widget/dastur_haqida_widget.dart';
import 'package:namoz_najotdir/screens/biz_haqimizda_page/widget/link_widget.dart';
import 'package:namoz_najotdir/screens/biz_haqimizda_page/widget/ozim_haqimda_widget.dart';
import 'package:namoz_najotdir/screens/biz_haqimizda_page/widget/salom_widget.dart';

class HaqimizdaPage extends StatefulWidget {
  const HaqimizdaPage({Key? key}) : super(key: key);

  @override
  _HaqimizdaPageState createState() => _HaqimizdaPageState();
}

class _HaqimizdaPageState extends State<HaqimizdaPage> {
  @override
  Widget build(BuildContext context) => SlideInUp(
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: const Color.fromRGBO(238, 238, 238, 1),
            elevation: 0,
            toolbarHeight: MediaQuery.of(context).size.height * 0.07,
            centerTitle: true,
            leading: Padding(
              padding: EdgeInsets.only(
                  top: MediaQuery.of(context).size.height * 0.006,
                  left: MediaQuery.of(context).size.width * 0.023),
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
            title: const Text(
              "Biz haqimizda",
              style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 25,
                  fontFamily: "Fonts"),
            ),
          ),
          body: Column(
            children: [
              Stack(
                children: [
                  Container(
                    color: const Color.fromRGBO(238, 238, 238, 1),
                    height: MediaQuery.of(context).size.height * 0.9,
                    width: MediaQuery.of(context).size.width * 1,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          height: MediaQuery.of(context).size.height * 0.7,
                          width: MediaQuery.of(context).size.width,
                          color: Colors.transparent,
                          child: Column(
                            children: const [
                              SalomWidget(),
                              OzimHaqimdaWidget(),
                              DasturHaqidaWidget(),
                            ],
                          ),
                        ),
                        Container(
                          height: MediaQuery.of(context).size.height * 0.17,
                          width: MediaQuery.of(context).size.width * 1,
                          decoration: const BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage("assets/images/maschid.jpg"),
                                fit: BoxFit.contain),
                          ),
                        )
                      ],
                    ),
                  ),
                  const LinkWidget(),
                ],
              ),
            ],
          ),
        ),
      );
}
