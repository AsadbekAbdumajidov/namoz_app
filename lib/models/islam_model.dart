import 'package:hive_flutter/hive_flutter.dart';

part 'islam_model.g.dart';

@HiveType(typeId: 0)
class IslamModel {
  IslamModel({
     this.code,
     this.status,
     this.data,
  });

  @HiveField(0)
  int? code;
  @HiveField(1)
  String? status;
  @HiveField(2)
  List<Datum>? data;

  factory IslamModel.fromJson(Map<String, dynamic> json) => IslamModel(
        code: json["code"],
        status: json["status"],
        data: List<Datum>.from(json["data"].map((x) => Datum.fromJson(x))),
      );
}

@HiveType(typeId: 1)
class Datum {
  Datum({
     this.timings,
     this.date,
     this.meta,
  });
@HiveField(0)
  Timings? timings;
  @HiveField(1)
  Date? date;
  @HiveField(2)
  Meta? meta;

  factory Datum.fromJson(Map<String, dynamic> json) => Datum(
        timings: Timings.fromJson(json["timings"]),
        date: Date.fromJson(json["date"]),
        meta: Meta.fromJson(json["meta"]),
      );
}

@HiveType(typeId: 2)
class Date {
  Date({
     this.readable,
     this.timestamp,
     this.gregorian,
     this.hijri,
  });
@HiveField(0)
  String? readable;
  @HiveField(1)
  String? timestamp;
  @HiveField(2)
  Gregorian? gregorian;
  @HiveField(3)
  Hijri? hijri;

  factory Date.fromJson(Map<String, dynamic> json) => Date(
        readable: json["readable"],
        timestamp: json["timestamp"],
        gregorian: Gregorian.fromJson(json["gregorian"]),
        hijri: Hijri.fromJson(json["hijri"]),
      );
}

@HiveType(typeId: 3)
class Gregorian {
  Gregorian({
     this.date,
     this.format,
     this.day,
     this.weekday,
     this.month,
     this.year,
     this.designation,
  });

@HiveField(0)
  String? date;
  @HiveField(1)
  String? format;
  @HiveField(2)
  String? day;
  @HiveField(3)
  GregorianWeekday? weekday;
  @HiveField(4)
  GregorianMonth? month;
  @HiveField(5)
  String? year;
  @HiveField(6)
  Designation? designation;

  factory Gregorian.fromJson(Map<String, dynamic> json) => Gregorian(
        date: json["date"],
        format: json["format"],
        day: json["day"],
        weekday: GregorianWeekday.fromJson(json["weekday"]),
        month: GregorianMonth.fromJson(json["month"]),
        year: json["year"],
        designation: Designation.fromJson(json["designation"]),
      );
}

@HiveType(typeId: 4)
class Designation {
  Designation({
     this.abbreviated,
     this.expanded,
  });
@HiveField(0)
  String? abbreviated;
  @HiveField(1)
  String? expanded;

  factory Designation.fromJson(Map<String, dynamic> json) => Designation(
        abbreviated: json["abbreviated"],
        expanded: json["expanded"],
      );
}

@HiveType(typeId: 5)
class GregorianMonth {
  GregorianMonth({
     this.number,
     this.en,
  });
@HiveField(0)
  int? number;
  @HiveField(1)
  String? en;

  factory GregorianMonth.fromJson(Map<String, dynamic> json) => GregorianMonth(
        number: json["number"],
        en: json["en"],
      );
}

@HiveType(typeId: 6)
class GregorianWeekday {
  GregorianWeekday({
     this.en,
  });
@HiveField(0)
  String? en;

  factory GregorianWeekday.fromJson(Map<String, dynamic> json) =>
      GregorianWeekday(
        en: json["en"],
      );
}

@HiveType(typeId: 7)
class Hijri {
  Hijri({
     this.date,
     this.format,
     this.day,
     this.weekday,
     this.month,
     this.year,
     this.designation,
     this.holidays,
  });
@HiveField(0)
  String? date;
  @HiveField(1)
  String? format;
  @HiveField(2)
  String? day;
  @HiveField(3)
  HijriWeekday? weekday;
  @HiveField(4)
  HijriMonth? month;
  @HiveField(5)
  String? year;
  @HiveField(6)
  Designation? designation;
  @HiveField(7)
  List<dynamic>? holidays;

  factory Hijri.fromJson(Map<String, dynamic> json) => Hijri(
        date: json["date"],
        format: json["format"],
        day: json["day"],
        weekday: HijriWeekday.fromJson(json["weekday"]),
        month: HijriMonth.fromJson(json["month"]),
        year: json["year"],
        designation: Designation.fromJson(json["designation"]),
        holidays: List<dynamic>.from(json["holidays"].map((x) => x)),
      );
}

@HiveType(typeId: 8)
class HijriMonth {
  HijriMonth({
     this.number,
     this.en,
     this.ar,
  });

@HiveField(0)
  int? number;
  @HiveField(1)
  String? en;
  @HiveField(2)
  String? ar;

  factory HijriMonth.fromJson(Map<String, dynamic> json) => HijriMonth(
        number: json["number"],
        en: json["en"],
        ar: json["ar"],
      );
}

@HiveType(typeId: 9)
class HijriWeekday {
  HijriWeekday({
     this.en,
     this.ar,
  });
@HiveField(0)
  String? en;
  @HiveField(1)
  String? ar;

  factory HijriWeekday.fromJson(Map<String, dynamic> json) => HijriWeekday(
        en: json["en"],
        ar: json["ar"],
      );
}

@HiveType(typeId: 10)
class Meta {
  Meta({
     this.latitude,
     this.longitude,
     this.timezone,
     this.method,
     this.latitudeAdjustmentMethod,
     this.midnightMode,
     this.school,
     this.offset,
  });
@HiveField(0)
  double? latitude;
  @HiveField(1)
  double? longitude;
  @HiveField(2)
  String? timezone;
  @HiveField(3)
  Method? method;
  @HiveField(4)
  String? latitudeAdjustmentMethod;
  @HiveField(5)
  String? midnightMode;
  @HiveField(6)
  String? school;
  @HiveField(7)
  Map<String, int>? offset;

  factory Meta.fromJson(Map<String, dynamic> json) => Meta(
        latitude: json["latitude"].toDouble(),
        longitude: json["longitude"].toDouble(),
        timezone: json["timezone"],
        method: Method.fromJson(json["method"]),
        latitudeAdjustmentMethod: json["latitudeAdjustmentMethod"],
        midnightMode: json["midnightMode"],
        school: json["school"],
        offset:
            Map.from(json["offset"]).map((k, v) => MapEntry<String, int>(k, v)),
      );
}

@HiveType(typeId: 11)
class Method {
  Method({
     this.id,
     this.name,
     this.params,
     this.location,
  });

@HiveField(0)
  int? id;
  @HiveField(1)
  String? name;
  @HiveField(2)
  Params? params;
  @HiveField(3)
  Location? location;

  factory Method.fromJson(Map<String, dynamic> json) => Method(
        id: json["id"],
        name: json["name"],
        params: Params.fromJson(json["params"]),
        location: Location.fromJson(json["location"]),
      );
}

@HiveType(typeId: 12)
class Location {
  Location({
     this.latitude,
     this.longitude,
  });
@HiveField(0)
  double? latitude;
  @HiveField(2)
  double? longitude;

  factory Location.fromJson(Map<String, dynamic> json) => Location(
        latitude: json["latitude"].toDouble(),
        longitude: json["longitude"].toDouble(),
      );
}

@HiveType(typeId: 13)
class Params {
  Params({
     this.fajr,
     this.isha,
  });

@HiveField(0)
  int? fajr;
  @HiveField(1)
  int? isha;

  factory Params.fromJson(Map<String, dynamic> json) => Params(
        fajr: json["Fajr"],
        isha: json["Isha"],
      );
}

@HiveType(typeId: 14)
class Timings {
  Timings({
     this.fajr,
     this.sunrise,
     this.dhuhr,
     this.asr,
     this.sunset,
     this.maghrib,
     this.isha,
     this.imsak,
     this.midnight,
  });
@HiveField(0)
  String? fajr;
  @HiveField(1)
  String? sunrise;
  @HiveField(2)
  String? dhuhr;
  @HiveField(3)
  String? asr;
  @HiveField(4)
  String? sunset;
  @HiveField(5)
  String? maghrib;
  @HiveField(6)
  String? isha;
  @HiveField(7)
  String? imsak;
  @HiveField(8)
  String? midnight;

  factory Timings.fromJson(Map<String, dynamic> json) => Timings(
        fajr: json["Fajr"],
        sunrise: json["Sunrise"],
        dhuhr: json["Dhuhr"],
        asr: json["Asr"],
        sunset: json["Sunset"],
        maghrib: json["Maghrib"],
        isha: json["Isha"],
        imsak: json["Imsak"],
        midnight: json["Midnight"],
      );
}
