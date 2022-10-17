// ignore_for_file: avoid_print

import 'dart:io';
import 'package:dio/dio.dart';
import 'package:hive/hive.dart';
import 'package:namoz_najotdir/presentation/view/home/home_page.dart';
import 'package:path_provider/path_provider.dart';

class ServiceIslam {
  static List? datas = [];

  static Future getIslamData() async {
    await openBox();
    var oy = DateTime.now().month;
    var yil = DateTime.now().year;
    String regionim = ayniRegion;
    Response res;
    try {
      res = await Dio().get(
          "https://api.aladhan.com/v1/calendarByCity?city=$regionim&country=Uzbekistan&method=0&month=$oy&year=$yil&school=1");
      await putIslamData(res.data);
    } catch (e) {
      print("empty");
    }

    List myData = box!.toMap().values.toList();
    if (myData.isEmpty) {
      datas!.add("nodata");
    } else {
      datas = myData;
    }

    return true;
  }

  static Box? box;
  static Future openBox() async {
    Directory appDocDir = await getApplicationDocumentsDirectory();
    Hive.init(appDocDir.path);
    box = await Hive.openBox("datam");
  }

  static putIslamData(var data) async {
    await box!.clear();

    for (var d in data["data"]) {
      box!.add(d);
    }
  }
}
