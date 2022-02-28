import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';

class DrawerMenu extends StatefulWidget {
  const DrawerMenu({Key? key}) : super(key: key);

  @override
  State<DrawerMenu> createState() => _DrawerMenuState();
}

class _DrawerMenuState extends State<DrawerMenu> {
  @override
  Widget build(BuildContext context) {
    return SlideInLeft(
      child: Stack(
        children: [
          Drawer(
            backgroundColor: const Color.fromRGBO(12, 114, 100, 40),
            shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.only(
                  topRight: Radius.circular(40),
                  bottomRight: Radius.circular(40)),
            ),
            child: Container(
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              decoration: const BoxDecoration(
                color: Colors.transparent,
                borderRadius: BorderRadius.only(
                    topRight: Radius.circular(40),
                    bottomRight: Radius.circular(40)),
              ),
              child: Column(
                children: [
                  Container(
                    height: MediaQuery.of(context).size.height * 0.25,
                    decoration: const BoxDecoration(
                        color: Colors.transparent,
                        borderRadius: BorderRadius.only(
                          topRight: Radius.circular(40),
                        ),
                        image: DecorationImage(
                            image: AssetImage("assets/images/N1.png"),
                            fit: BoxFit.cover)),
                  ),
                  Card(
                    color: Colors.transparent,
                    child: ListTile(
                      onTap: () {
                        Navigator.pushNamed(context, '/haqimizda');
                      },
                      leading:
                          const Icon(Icons.help, color: Colors.white, size: 27),
                      title: const Text(
                        "Biz haqimizda",
                        style: TextStyle(color: Colors.white, fontSize: 16),
                      ),
                    ),
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
