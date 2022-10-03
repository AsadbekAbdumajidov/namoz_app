import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:namoz_najotdir/components/size_konfig.dart';
import 'package:namoz_najotdir/data/data_about_page.dart';
import 'package:namoz_najotdir/screens/biz_haqimizda_page/widget/link_widget.dart';
import 'package:namoz_najotdir/screens/biz_haqimizda_page/widget/text_widget.dart';

class HaqimizdaPage extends StatefulWidget {
  const HaqimizdaPage({Key? key}) : super(key: key);

  @override
  State<HaqimizdaPage> createState() => _HaqimizdaPageState();
}

class _HaqimizdaPageState extends State<HaqimizdaPage> {
  @override
  Widget build(BuildContext context) => SlideInUp(
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: const Color.fromRGBO(238, 238, 238, 1),
            elevation: 0,
            centerTitle: true,
            leading: Padding(
            padding: const EdgeInsets.only(top: 5, left: 15),
            child: CircleAvatar(
              backgroundColor: Colors.white,
              child: IconButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/home');
                },
                icon: const Icon(
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
                    height: MediaQuery.of(context).size.height * 0.885,
                    width: MediaQuery.of(context).size.width * 1,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          height: MediaQuery.of(context).size.height * 0.7,
                          width: MediaQuery.of(context).size.width,
                          color: Colors.transparent,
                          child: Padding(
                            padding: EdgeInsets.symmetric(
                                horizontal: wi(12), vertical: he(16)),
                            child: Column(
                              children: [
                                Text(
                                  DataAboutPage.salom.toString(),
                                  style: const TextStyle(
                                      color: Colors.black,
                                      fontSize: 18,
                                      fontFamily: 'balo'),
                                ),
                                TextWidget(
                                    title: DataAboutPage.ozimHaqimda.toString(),
                                    icon: const Icon(
                                        Icons.account_circle_outlined)),
                                TextWidget(
                                    title:
                                        DataAboutPage.dasturHaqida.toString(),
                                    icon: const Icon(
                                        Icons.warning_amber_outlined)),
                              ],
                            ),
                          ),
                        ),
                        Container(
                          height: MediaQuery.of(context).size.height * 0.17,
                          width: MediaQuery.of(context).size.width * 1,
                          decoration: const BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage("assets/images/maschid.jpg"),
                                fit: BoxFit.cover),
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
