import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class ElevatedButtonWidget extends StatefulWidget {
  const ElevatedButtonWidget({Key? key}) : super(key: key);

  @override
  State<ElevatedButtonWidget> createState() => _ElevatedNuttonWidgetState();
}

class _ElevatedNuttonWidgetState extends State<ElevatedButtonWidget> {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        ElevatedButton(
          style: OutlinedButton.styleFrom(
            backgroundColor: const Color.fromRGBO(12, 114, 100, 1),
            minimumSize: Size(
              MediaQuery.of(context).size.width * 0.3,
              MediaQuery.of(context).size.height * 0.06,
            ),
            shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(10)),
            ),
          ),
          onPressed: () {},
          child: const Center(
            child: Text(
              "Compas",
              style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'balo',
                  fontSize: 20),
            ),
          ),
        ),
        ElevatedButton(
          style: OutlinedButton.styleFrom(
            backgroundColor: Colors.white,
            minimumSize: Size(
              MediaQuery.of(context).size.width * 0.3,
              MediaQuery.of(context).size.height * 0.06,
            ),
            shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(10)),
            ),
          ),
          onPressed: () {
            showToast();
          },
          child: const Center(
            child: Text(
              "O'q",
              style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'balo',
                  fontSize: 20),
            ),
          ),
        ),
        ElevatedButton(
          style: OutlinedButton.styleFrom(
            backgroundColor: Colors.white,
            minimumSize: Size(
              MediaQuery.of(context).size.width * 0.3,
              MediaQuery.of(context).size.height * 0.06,
            ),
            shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(10)),
            ),
          ),
          onPressed: () {
            showToast();
          },
          child: const Center(
            child: Text(
              "Xarita",
              style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'balo',
                  fontSize: 20),
            ),
          ),
        ),
      ],
    );
  }

  showToast() {
    return Fluttertoast.showToast(
      msg: "Ushbu qulaylik hali ishga tushirilmagan",
      gravity: ToastGravity.TOP,
      timeInSecForIosWeb: 3,
      backgroundColor: Colors.black,
      textColor: Colors.white,
      fontSize: 25,
    );
  }
}
