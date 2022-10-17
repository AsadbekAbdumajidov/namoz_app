import 'package:flutter/material.dart';
import 'package:flutter_exit_app/flutter_exit_app.dart';

class ShowBanner {
  static showMyDialog(context) {
    return showDialog(
        barrierDismissible: false, // ekranni chetiga bosilganda ochiradi.
        context: context,
        builder: (context) {
          return AlertDialog(
            title: const Text(
              "Namoz najotdir",
              style: TextStyle(color: Colors.black, fontFamily: "book"),
            ),
            content: const Text("Ilovadan chiqishni hohlaysizmi ?",
                style: TextStyle(color: Colors.black, fontFamily: "balo")),
            backgroundColor: Colors.white,
            actions: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  ElevatedButton(
                    style: OutlinedButton.styleFrom(
                      fixedSize: const Size(100, 35),
                      backgroundColor: Colors.red,
                      shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                      ),
                    ),
                    child: const Text(
                      "Yo'q",
                      style: TextStyle(color: Colors.white),
                    ),
                    onPressed: () {
                      Navigator.pop(
                          context); // Buttonga bosilganda orqaga qaytadi
                    },
                  ),
                  ElevatedButton(
                    style: OutlinedButton.styleFrom(
                      fixedSize: const Size(100, 35),
                      backgroundColor: const Color.fromRGBO(12, 114, 100, 40),
                      shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(10)),
                      ),
                    ),
                    child: const Text(
                      "Ha",
                      style: TextStyle(color: Colors.white),
                    ),
                    onPressed: () {
                      FlutterExitApp.exitApp();
                    },
                  ),
                ],
              )
            ],
          );
        });
  }
}
