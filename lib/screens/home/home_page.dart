import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:namoz_najotdir/components/carusel_slider/carusel_slider.dart';
import 'package:namoz_najotdir/components/drawer_menu.dart';
import 'package:namoz_najotdir/components/size_konfig.dart';
import 'package:namoz_najotdir/data/region_data.dart';
import 'package:namoz_najotdir/screens/home/widget/home_builder_widget.dart';

class Islam extends StatefulWidget {
  const Islam({Key? key}) : super(key: key);

  @override
  State<Islam> createState() => _IslomState();
}

String ayniRegion = Hive.box("region").values.toList()[0];

class _IslomState extends State<Islam> {
  @override
  void initState() {
    if (Hive.box("region").isEmpty) {
      Hive.box("region").put(0, "Tashkent");
    }
    super.initState();
  }

  @override
  Widget build(BuildContext context) => SlideInUp(
          child: ValueListenableBuilder(
        valueListenable: Hive.box("region").listenable(),
        builder: (context, box, __) {
          SizeConfig().init(context);
          return FadeInUp(
            child: Scaffold(
              backgroundColor: const Color.fromRGBO(238, 238, 238, 1),
              appBar: appBarim(),
              drawer: const DrawerMenu(),
              body: SingleChildScrollView(
                child: Column(
                  children: [
                    Carusel(region: ayniRegion),
                    Container(
                      height: he(637),
                      color: const Color.fromRGBO(175, 200, 197, 1),
                      child: const HomeBuuilder(),
                    ),
                  ],
                ),
              ),
            ),
          );
        },
      ));

  AppBar appBarim() {
    return AppBar(
      backgroundColor: const Color.fromRGBO(238, 238, 238, 1),
      elevation: 0,
      centerTitle: true,
      iconTheme:
          const IconThemeData(color: Color.fromRGBO(12, 114, 100, 1), size: 30),
      title: const Text(
        "Namoz najotdir",
        style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.bold,
            fontSize: 25,
            fontFamily: "Fonts"),
      ),
      actions: [
        PopupMenuButton(
          onSelected: (v) {
            ayniRegion = v.toString();

            setState(() {});
          },
          child: Padding(
            padding: EdgeInsets.only(
                left: MediaQuery.of(context).size.height * 0.01,
                right: MediaQuery.of(context).size.height * 0.005),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                Icon(
                  Icons.location_on_rounded,
                  size: 30,
                )
              ],
            ),
          ),
          itemBuilder: (context) {
            return List.generate(RegionAniqla.region.length, (index) {
              return PopupMenuItem(
                onTap: () {
                  ayniRegion = RegionAniqla.region[index];
                  Hive.box("region").put(0, RegionAniqla.region[index]);
                  debugPrint(Hive.box("region").values.toList()[0].toString());
                  setState(() {});
                },
                child: SlideInUp(
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            RegionAniqla.region[index],
                            style: const TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                                fontFamily: 'balo',
                                fontSize: 20),
                          ),
                          const Icon(Icons.share_location_rounded),
                        ],
                      ),
                      const Divider(
                        color: Colors.black45,
                      )
                    ],
                  ),
                ),
              );
            });
          },
        ),
        Padding(
          padding:
              EdgeInsets.only(right: MediaQuery.of(context).size.width * 0.007),
          child: IconButton(
            onPressed: () {
              Navigator.pushNamed(context, '/haqimizda');
            },
            icon: const Icon(
              Icons.help_outline_rounded,
              size: 30,
            ),
          ),
        )
      ],
    );
  }
}
