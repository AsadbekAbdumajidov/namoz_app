import 'package:namoz_najotdir/core/const_islam.dart';
import 'package:namoz_najotdir/models/model_namoz_vaqti.dart';
import 'package:namoz_najotdir/services/service_islam.dart';

class ServiceModul {
// ! Listga moduldagi propartiylarni add qildim
  static List times = [];

  static timesAdd() {
    times.clear();
    ServiceModul.times.addAll([
      (ServiceModul.modulAddQil() as NamozVaqtiModul).saharlikVaqti,
      (ServiceModul.modulAddQil() as NamozVaqtiModul).bomdod,
      (ServiceModul.modulAddQil() as NamozVaqtiModul).quyoshChiqishi,
      (ServiceModul.modulAddQil() as NamozVaqtiModul).peshin,
      (ServiceModul.modulAddQil() as NamozVaqtiModul).asr,
      (ServiceModul.modulAddQil() as NamozVaqtiModul).quyoshBotishi,
      (ServiceModul.modulAddQil() as NamozVaqtiModul).shom,
      (ServiceModul.modulAddQil() as NamozVaqtiModul).xufton,
      (ServiceModul.modulAddQil() as NamozVaqtiModul).yarimTun,
    ]);
  }

  // ! Modulga ayni vaqtdagi namoz vaqtini add qildim
  static modulAddQil() {
    return NamozVaqtiModul(
        saharlikVaqti: ["Saharlik vaqti", saharlikAniqla()],
        bomdod: ["Bomdod", bomdodAniqla()],
        quyoshChiqishi: ["Quyosh chiqish", quyoshChiqishiniAniqla()],
        peshin: ["Peshin", peshiAniqla()],
        asr: ["Asr", asrAniqla()],
        quyoshBotishi: ["Quyosh botish", quyoshBotishiAniqla()],
        shom: ["Shom", shomAniqla()],
        xufton: ["Xufton", xuftonAniqla()],
        yarimTun: ["Yarim tun", yarimtunAniqla()]);
  }

  // ! Namoz vaqtini ayni vaqtdagisini aniqlab oldim
  static saharlikAniqla() {
    for (var i = 0; i < ServiceIslam.datas!.length; i++) {
      if (ServiceIslam.datas![i]['date']['gregorian']['date'] == ConstIslam.v) {
        return "${ServiceIslam.datas![i]['timings']['Imsak']}";
      }
    }
  }

  static bomdodAniqla() {
    for (var i = 0; i < ServiceIslam.datas!.length; i++) {
      if (ServiceIslam.datas![i]['date']['gregorian']['date'] == ConstIslam.v) {
        return "${ServiceIslam.datas![i]['timings']['Fajr']}";
      }
    }
  }

  static quyoshChiqishiniAniqla() {
    for (var i = 0; i < ServiceIslam.datas!.length; i++) {
      if (ServiceIslam.datas![i]['date']['gregorian']['date'] == ConstIslam.v) {
        return "${ServiceIslam.datas![i]['timings']['Sunrise']}";
      }
    }
  }

  static peshiAniqla() {
    for (var i = 0; i < ServiceIslam.datas!.length; i++) {
      if (ServiceIslam.datas![i]['date']['gregorian']['date'] == ConstIslam.v) {
        return "${ServiceIslam.datas![i]['timings']['Dhuhr']}";
      }
    }
  }

  static asrAniqla() {
    for (var i = 0; i < ServiceIslam.datas!.length; i++) {
      if (ServiceIslam.datas![i]['date']['gregorian']['date'] == ConstIslam.v) {
        return "${ServiceIslam.datas![i]['timings']['Asr']}";
      }
    }
  }

  static quyoshBotishiAniqla() {
    for (var i = 0; i < ServiceIslam.datas!.length; i++) {
      if (ServiceIslam.datas![i]['date']['gregorian']['date'] == ConstIslam.v) {
        return "${ServiceIslam.datas![i]['timings']['Sunset']}";
      }
    }
  }

  static shomAniqla() {
    for (var i = 0; i < ServiceIslam.datas!.length; i++) {
      if (ServiceIslam.datas![i]['date']['gregorian']['date'] == ConstIslam.v) {
        return "${ServiceIslam.datas![i]['timings']['Maghrib']}";
      }
    }
  }

  static xuftonAniqla() {
    for (var i = 0; i < ServiceIslam.datas!.length; i++) {
      if (ServiceIslam.datas![i]['date']['gregorian']['date'] == ConstIslam.v) {
        return "${ServiceIslam.datas![i]['timings']['Isha']}";
      }
    }
  }

  static yarimtunAniqla() {
    for (var i = 0; i < ServiceIslam.datas!.length; i++) {
      if (ServiceIslam.datas![i]['date']['gregorian']['date'] == ConstIslam.v) {
        return "${ServiceIslam.datas![i]['timings']['Midnight']}";
      }
    }
  }
}
