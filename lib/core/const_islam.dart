import 'package:hive_flutter/hive_flutter.dart';
import 'package:intl/intl.dart';
import 'package:namoz_najotdir/models/islam_model.dart';
import 'package:namoz_najotdir/services/service_islam.dart';
import 'package:namoz_najotdir/services/service_modul_add.dart';

class ConstIslam {
  // ! Register Adapter
  static adapter() {
    Hive.registerAdapter(IslamModelAdapter());
    Hive.registerAdapter(DatumAdapter());
    Hive.registerAdapter(DateAdapter());
    Hive.registerAdapter(GregorianAdapter());
    Hive.registerAdapter(DesignationAdapter());
    Hive.registerAdapter(GregorianMonthAdapter());
    Hive.registerAdapter(GregorianWeekdayAdapter());
    Hive.registerAdapter(HijriAdapter());
    Hive.registerAdapter(HijriMonthAdapter());
    Hive.registerAdapter(HijriWeekdayAdapter());
    Hive.registerAdapter(MetaAdapter());
    Hive.registerAdapter(MethodAdapter());
    Hive.registerAdapter(LocationAdapter());
    Hive.registerAdapter(ParamsAdapter());
    Hive.registerAdapter(TimingsAdapter());
  }

// ! ayni kunni aniqlash uchun DateTime ni formatladim
  static var v = DateFormat('dd-MM-yyyy').format(DateTime.now());
  // ! intl: ^0.17.0
  // ? intl ushbu packagedan foydalanildi
  static dataAniqla() {
    for (int i = 0; i < ServiceIslam.box!.length; i++) {
      if (ServiceIslam.datas![i]['date']['gregorian']['date'] == v) {
        return Hive.box("datam").values.toList()[i]['date']['readable'];
      }
    }
  }

  // ! ayni namoz vaqtnini aniqlash uchun DateTime ni formatladim
  static var a = DateFormat('HH:mm').format(DateTime.now());

  static int son = 1; // ! shu songa qara ayni vaqtdagi namoz vaqti aniqlanadi

  static namozVaqtiAniqla() {
    if (ServiceModul.times[0][1].toString().substring(0, 5) == a) {
      son = 1;
    } else if (ServiceModul.times[1][1].substring(0, 5) == a) {
      son = 2;
    } else if (ServiceModul.times[2][1].substring(0, 5) == a) {
      son = 3;
    } else if (ServiceModul.times[3][1].substring(0, 5) == a) {
      son = 4;
    } else if (ServiceModul.times[4][1].substring(0, 5) == a) {
      son = 5;
    } else if (ServiceModul.times[5][1].substring(0, 5) == a) {
      son = 6;
    } else if (ServiceModul.times[6][1].substring(0, 5) == a) {
      son = 7;
    } else if (ServiceModul.times[7][1].substring(0, 5) == a) {
      son = 8;
    } else if (ServiceModul.times[8][1].substring(0, 5) == a) {
      son = 9;
    }
  }

  static ayniNamozVaqti() {
    if (son == 1) {
      return ServiceModul.times[1][1].toString().substring(0, 5);
    } else if (son == 2) {
      return ServiceModul.times[2][1].toString().substring(0, 5);
    } else if (son == 3) {
      return ServiceModul.times[3][1].toString().substring(0, 5);
    } else if (son == 4) {
      return ServiceModul.times[4][1].toString().substring(0, 5);
    } else if (son == 5) {
      return ServiceModul.times[5][1].toString().substring(0, 5);
    } else if (son == 6) {
      return ServiceModul.times[6][1].toString().substring(0, 5);
    } else if (son == 7) {
      return ServiceModul.times[7][1].toString().substring(0, 5);
    } else if (son == 8) {
      return ServiceModul.times[8][1].toString().substring(0, 5);
    } else if (son == 9) {
      return ServiceModul.times[0][1].toString().substring(0, 5);
    }
  }

  static ayniQaysiNamoz() {
    if (son == 1) {
      return ServiceModul.times[1][0].toString();
    } else if (son == 2) {
      return ServiceModul.times[2][0].toString();
    } else if (son == 3) {
      return ServiceModul.times[3][0].toString();
    } else if (son == 4) {
      return ServiceModul.times[4][0].toString();
    } else if (son == 5) {
      return ServiceModul.times[5][0].toString();
    } else if (son == 6) {
      return ServiceModul.times[6][0].toString();
    } else if (son == 7) {
      return ServiceModul.times[7][0].toString();
    } else if (son == 8) {
      return ServiceModul.times[8][0].toString();
    } else if (son == 9) {
      return ServiceModul.times[0][0].toString();
    }
  }
}
