import 'package:flutter/material.dart';
import 'package:namoz_najotdir/services/Service_link.dart';

class LinkWidget extends StatefulWidget {
  const LinkWidget({Key? key}) : super(key: key);

  @override
  _LinkWidgetState createState() => _LinkWidgetState();
}

class _LinkWidgetState extends State<LinkWidget> {
  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: MediaQuery.of(context).size.height * 0.1,
      right: MediaQuery.of(context).size.width * 0.05,
      child: Column(
        children: [
          Container(
            height: MediaQuery.of(context).size.height * 0.12,
            width: MediaQuery.of(context).size.width * 0.7,
            decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("assets/images/N2.jpg"), fit: BoxFit.cover),
              borderRadius: BorderRadius.all(Radius.circular(20)),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
                top: MediaQuery.of(context).size.height * 0.025),
            child: SizedBox(
              height: MediaQuery.of(context).size.height * 0.05,
              width: MediaQuery.of(context).size.width * 0.9,
              child: Padding(
                padding: EdgeInsets.only(
                    top: MediaQuery.of(context).size.height * 0.01),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    OutlinedButton(
                      onPressed: () {
                        ServiceUrl.launchURL(
                            "https://www.instagram.com/asadbek_dev/");
                      },
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Container(
                            height: MediaQuery.of(context).size.height * 0.035,
                            width: MediaQuery.of(context).size.width * 0.26,
                            decoration: const BoxDecoration(
                                image: DecorationImage(
                                    image: AssetImage(
                                        "assets/images/insta_logo.png"),
                                    fit: BoxFit.cover)),
                          ),
                        ],
                      ),
                    ),
                    OutlinedButton(
                      onPressed: () {
                        ServiceUrl.launchURL(
                            "https://github.com/BekFlutterDev");
                      },
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Container(
                            height: MediaQuery.of(context).size.height * 0.03,
                            width: MediaQuery.of(context).size.width * 0.28,
                            decoration: const BoxDecoration(
                                image: DecorationImage(
                                    image: AssetImage(
                                        "assets/images/GitHub-Emblem.png"),
                                    fit: BoxFit.cover)),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 25),
            child: OutlinedButton(
              style: OutlinedButton.styleFrom(
                backgroundColor: Colors.blueGrey.shade100,
              ),
              onPressed: () {
                ServiceUrl.launchURL("https://t.me/asadbek_blog1");
              },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    height: MediaQuery.of(context).size.height * 0.032,
                    width: MediaQuery.of(context).size.height * 0.032,
                    decoration: const BoxDecoration(
                        image: DecorationImage(
                            image:
                                AssetImage("assets/images/Telegram-Logo.png"),
                            fit: BoxFit.cover)),
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
