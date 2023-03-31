import 'package:flutter/material.dart';
import 'package:namoz_najotdir/core/services/service_link.dart';
import 'package:namoz_najotdir/presentation/components/size_konfig.dart';

class LinkWidget extends StatefulWidget {
  const LinkWidget({Key? key}) : super(key: key);

  @override
  State<LinkWidget> createState() => _LinkWidgetState();
}

class _LinkWidgetState extends State<LinkWidget> {
  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: he(40),
      right: wi(10),
      left: wi(10),
      child: Column(
        children: [
          Container(
            height: he(120),
            width: wi(250),
            decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("assets/images/N2.jpg"), fit: BoxFit.cover),
              borderRadius: BorderRadius.all(Radius.circular(20)),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
                top: MediaQuery.of(context).size.height * 0.025),
            child:  Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    OutlinedButton(
                      onPressed: () {
                        ServiceUrl.launchURL(
                            "https://www.instagram.com/asadbek_dev/");
                      },
                      child: Image.asset("assets/images/insta_logo.png",
                          fit: BoxFit.cover, height: he(20), width: wi(80)),
                    ),
                    OutlinedButton(
                      onPressed: () {
                        ServiceUrl.launchURL(
                            "https://www.linkedin.com/in/asadbek-abdumajidov-aa1b33233/");
                      },
                      child: Image.asset("assets/images/linkedin_logo.png",
                          fit: BoxFit.cover, height: he(20), width: wi(80)),
                    ),
                  ],
            ),
          ),
          Padding(
            padding:  EdgeInsets.only(top: he(10)),
            child: OutlinedButton(
              style: OutlinedButton.styleFrom(
                minimumSize: Size(wi(80), he(30)),
                  backgroundColor: Colors.blueGrey.shade100),
              onPressed: () {
                ServiceUrl.launchURL("https://t.me/asadbek_blog1");
              },
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Image.asset(
                    "assets/images/Telegram-Logo.png",
                    fit: BoxFit.cover,
                    height: he(20),
                    width: wi(30),
                  ),
                  const Text(
                    "Telegram",
                    style: TextStyle(
                        color: Colors.white, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
