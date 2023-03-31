import 'package:flutter/material.dart';
import 'package:namoz_najotdir/core/const_islam.dart';
import 'package:namoz_najotdir/core/themes/app_colors.dart';
import 'package:namoz_najotdir/presentation/components/size_konfig.dart';
import 'package:namoz_najotdir/presentation/view/Taqvim_page/widget/container_white_widget.dart';
import 'package:namoz_najotdir/core/services/service_islam.dart';

class ContainerGreenWidget extends StatelessWidget {
  const ContainerGreenWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: he(750),
      width: MediaQuery.of(context).size.width,
      child: Container(
        width: MediaQuery.of(context).size.width,
        decoration: const BoxDecoration(
          color: AppColors.primaryColor,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(30),
            topRight: Radius.circular(30),
            bottomLeft: Radius.circular(10),
            bottomRight: Radius.circular(10),
          ),
        ),
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.only(top: he(10)),
              child: Text(
                ConstIslam.dataAniqla(),
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: he(26),
                    fontFamily: 'balo'),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: wi(6)),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    ServiceIslam.datas![0]["date"]["gregorian"]["month"]["en"],
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: he(26),
                        fontFamily: 'balo'),
                  ),
                  Row(
                    children: [
                      IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.calendar_view_day,
                          color: Colors.cyan.shade100,
                          size: he(30),
                        ),
                      ),
                      Text(
                        "Bugun",
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: he(25),
                            fontFamily: 'balo'),
                      ),
                      IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.calendar_view_day,
                          color: Colors.yellow.shade100,
                          size: he(30),
                        ),
                      ),
                      Text(
                        "Juma",
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: he(25),
                            fontFamily: 'balo'),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            const ContainerWhiteWidget()
          ],
        ),
      ),
    );
  }
}
