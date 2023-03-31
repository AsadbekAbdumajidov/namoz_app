import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:namoz_najotdir/core/themes/app_colors.dart';
import 'package:namoz_najotdir/presentation/components/carusel_slider/carusel_slider.dart';
import 'package:namoz_najotdir/presentation/components/drawer_menu.dart';
import 'package:namoz_najotdir/presentation/components/size_konfig.dart';
import 'package:namoz_najotdir/core/data/region_data.dart';
import 'package:namoz_najotdir/presentation/view/home/widget/home_builder_widget.dart';

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
              backgroundColor: AppColors.backgroundColor,
              appBar: appBarim(),
              drawer: const DrawerMenu(),
              body: Column(
                children: [
                  Carusel(region: ayniRegion),
                  Expanded(
                    child: Container(
                      height: he(637),
                      color: const Color.fromRGBO(175, 200, 197, 1),
                      child: const HomeBuuilder(),
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ));

  AppBar appBarim() {
    return AppBar(
      backgroundColor: AppColors.backgroundColor,
      elevation: 0,
      centerTitle: true,
      iconTheme: IconThemeData(
        color: AppColors.primaryColor,
        size: he(42),
      ),
      leading: Builder(
        builder: (BuildContext context) {
          return GestureDetector(
            child:  Icon(
              Icons.menu,
              color: AppColors.primaryColor,
              size: he(33), 
            ),
            onTap: () => Scaffold.of(context).openDrawer(),
          );
        },
      ),
      title: Text(
        "Namoz najotdir",
        style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.bold,
            fontSize: he(25),
            fontFamily: "Fonts"),
      ),
      actions: [
        Theme(
          data: ThemeData(highlightColor: Colors.transparent),
          child: PopupMenuButton(
            splashRadius: 0,
            onSelected: (v) {
              setState(() {
                ayniRegion = v.toString();
              });
            },
            child: Padding(
              padding: EdgeInsets.only(
                  left: MediaQuery.of(context).size.height * 0.01,
                  right: MediaQuery.of(context).size.height * 0.005),
              child: const Icon(
                Icons.location_on_rounded,
                color: AppColors.primaryColor,
                size: 30,
              ),
            ),
            itemBuilder: (context) {
              return List.generate(RegionAniqla.region.length, (index) {
                return PopupMenuItem(
                  onTap: () {
                    setState(() {
                      ayniRegion = RegionAniqla.region[index];
                      Hive.box("region").put(0, RegionAniqla.region[index]);
                      debugPrint(
                          Hive.box("region").values.toList()[0].toString());
                    });
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
        ),
        Padding(
          padding: EdgeInsets.only(right: wi(14), left: wi(6)),
          child: GestureDetector(
            onTap: () {
              Navigator.pushNamed(context, '/haqimizda');
            },
            child: const Icon(
              Icons.help_outline_rounded,
              size: 30,
            ),
          ),
        )
      ],
    );
  }
}
