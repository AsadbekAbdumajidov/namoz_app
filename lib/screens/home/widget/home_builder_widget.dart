import 'package:flutter/material.dart';
import 'package:namoz_najotdir/data/data.dart';

class HomeBuuilder extends StatefulWidget {
  const HomeBuuilder({Key? key}) : super(key: key);

  @override
  _HomeBuuilderState createState() => _HomeBuuilderState();
}

class _HomeBuuilderState extends State<HomeBuuilder> {
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      scrollDirection: Axis.vertical,
      physics: const BouncingScrollPhysics(),
      itemCount: Data.boshMenu.length,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        mainAxisExtent: MediaQuery.of(context).size.height * 0.243,
        crossAxisCount: 2,
      ),
      itemBuilder: (_, __) => InkWell(
        onTap: () {
          setState(() {
            navigator(__);
          });
        },
        child: Container(
          margin: const EdgeInsets.all(20),
          height: MediaQuery.of(context).size.height * 0.8,
          width: MediaQuery.of(context).size.height * 0.1,
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
                height: MediaQuery.of(context).size.height * 0.12,
                width: MediaQuery.of(context).size.height * 0.12,
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
                      fontSize: MediaQuery.of(context).size.height * 0.022),
                  maxLines: 1,
                ),
              ),
            ],
          ),
        ),
      ),
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
    }
  }
}
