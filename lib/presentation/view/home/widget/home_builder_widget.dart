import 'package:flutter/material.dart';
import 'package:namoz_najotdir/core/data/data.dart';
import 'package:namoz_najotdir/core/services/service_islam.dart';
import 'package:namoz_najotdir/presentation/components/size_konfig.dart';

class HomeBuuilder extends StatefulWidget {
  const HomeBuuilder({Key? key}) : super(key: key);

  @override
  State<HomeBuuilder> createState() => _HomeBuuilderState();
}

class _HomeBuuilderState extends State<HomeBuuilder> {
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      shrinkWrap: true,
      padding: EdgeInsets.only(bottom: he(40)),
      scrollDirection: Axis.vertical,
      physics: const BouncingScrollPhysics(),
      itemCount: Data.boshMenu.length,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        mainAxisExtent: he(230),
        crossAxisCount: 2,
      ),
      itemBuilder: (_, __) => FutureBuilder(
          future: ServiceIslam.getIslamData(),
          builder: (BuildContext context, AsyncSnapshot snapshot) {
            return InkWell(
              onTap: () {
                if (!snapshot.hasData) return;
                setState(() {
                  navigator(__);
                });
              },
              child: Container(
                margin: const EdgeInsets.all(20),
                height: he(800),
                width: wi(100),
                decoration: BoxDecoration(
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      spreadRadius: 2,
                      blurRadius: 7,
                      offset: const Offset(0, 5),
                    ),
                  ],
                  borderRadius: const BorderRadius.all(
                    Radius.circular(15),
                  ),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      height: he(120),
                      width: he(120),
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage(Data.boshMenuIcons[__]),
                              fit: BoxFit.cover)),
                    ),
                    Center(
                      child: Text(
                        Data.boshMenu[__],
                        style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize:__ == 8 ?he(16) : he(20)),
                        maxLines: 1,
                      ),
                    ),
                  ],
                ),
              ),
            );
          }),
    );
  }

  navigator(__) {
    if (__ == 0) {
      return Navigator.pushNamed(context, '/times');
    } else if (__ == 1) {
      return Navigator.pushNamed(context, '/qibla');
    } else if (__ == 2) {
      return Navigator.pushNamed(context, '/taqvim');
    } else if (__ == 3) {
      return Navigator.pushNamed(context, '/tasbeh');
    } else if (__ == 4) {
      return Navigator.pushNamed(context, '/namoz');
    } else if (__ == 5) {
      return Navigator.pushNamed(context, '/tahorat');
    } else if (__ == 6) {
      return Navigator.pushNamed(context, '/kalimaa');
    } else if (__ == 7) {
      return Navigator.pushNamed(context, '/hadis');
    } else if (__ == 8) {
      return Navigator.pushNamed(context, '/ismlar');
    } else if (__ == 9) {
      return Navigator.pushNamed(context, '/duo');
    } else if (__ == 10) {
      return Navigator.pushNamed(context, '/suralar');
    }
  }
}
