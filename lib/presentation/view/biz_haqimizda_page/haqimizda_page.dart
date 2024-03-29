import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:namoz_najotdir/core/themes/app_colors.dart';
import 'package:namoz_najotdir/presentation/components/custom_app_bar.dart';
import 'package:namoz_najotdir/presentation/components/size_konfig.dart';
import 'package:namoz_najotdir/core/data/data_about_page.dart';
import 'package:namoz_najotdir/presentation/view/biz_haqimizda_page/widget/link_widget.dart';
import 'package:namoz_najotdir/presentation/view/biz_haqimizda_page/widget/text_widget.dart';

class HaqimizdaPage extends StatefulWidget {
  const HaqimizdaPage({Key? key}) : super(key: key);

  @override
  State<HaqimizdaPage> createState() => _HaqimizdaPageState();
}

class _HaqimizdaPageState extends State<HaqimizdaPage> {
  @override
  Widget build(BuildContext context) => SlideInUp(
        child: Scaffold(
          backgroundColor: AppColors.backgroundColor,
          appBar: const CustomAppbar(
              statusHeight: 0, onRightTap: null, title: "Biz haqimizda"),
          body: Stack(
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                 Padding(
                   padding:  EdgeInsets.symmetric(horizontal: wi(10)),
                   child: Column(
                     children: [
                      SizedBox(height: he(14)),
                       Text(
                         DataAboutPage.salom.toString(),
                         style: TextStyle(
                             color: Colors.black,
                             fontSize: he(23),
                             fontFamily: 'balo'),
                       ),
                       Padding(
                         padding:  EdgeInsets.symmetric(vertical: he(8)),
                         child: TextWidget(
                             title: DataAboutPage.ozimHaqimda.toString(),
                             icon: const Icon(Icons.account_circle_outlined)),
                       ),
                        
                       TextWidget(
                           title: DataAboutPage.dasturHaqida.toString(),
                           icon: const Icon(Icons.warning_amber_outlined)),
                     ],
                   ),
                 ),
                  Container(
                    height: he(155),
                    width: MediaQuery.of(context).size.width,
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage("assets/images/maschid.jpg"),
                          fit: BoxFit.cover),
                    ),
                  )
                ],
              ),
              const LinkWidget(),
            ],
          ),
        ),
      );
}
