import 'package:flutter/material.dart';
import 'package:namoz_najotdir/core/const_islam.dart';
import 'package:namoz_najotdir/screens/Taqvim_page/widget/container_white_widget.dart';
import 'package:namoz_najotdir/services/service_islam.dart';

class ContainerGreenWidget extends StatelessWidget {
  const ContainerGreenWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.85,
      width: MediaQuery.of(context).size.width,
      child: Container(
        width: MediaQuery.of(context).size.width,
        decoration: const BoxDecoration(
          color: Color.fromRGBO(12, 114, 100, 1),
          borderRadius: BorderRadius.all(
            Radius.circular(20),
          ),
        ),
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.only(
                  top: MediaQuery.of(context).size.height * 0.01),
              child: Text(
                ConstIslam.dataAniqla(),
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: MediaQuery.of(context).size.width * 0.06,
                    fontFamily: 'balo'),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                  horizontal: MediaQuery.of(context).size.width * 0.03),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    ServiceIslam.datas![0]["date"]["gregorian"]["month"]["en"],
                    style:  TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: MediaQuery.of(context).size.width * 0.06,
                        fontFamily: 'balo'),
                  ),
                  Row(
                    children: [
                      IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.calendar_view_day,
                          color: Colors.cyan.shade100,
                          size: MediaQuery.of(context).size.width * 0.07,
                        ),
                      ),
                       Text(
                        "Bugun",
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: MediaQuery.of(context).size.width * 0.046,
                            fontFamily: 'balo'),
                      ),
                      IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.calendar_view_day,
                          color: Colors.yellow.shade100,
                          size: MediaQuery.of(context).size.width * 0.07,
                        ),
                      ),
                       Text(
                        "Juma",
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: MediaQuery.of(context).size.width * 0.046,
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
