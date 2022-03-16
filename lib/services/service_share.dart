import 'package:flutter_share/flutter_share.dart';

class Servicesharre {
  static Future<void> share() async {
    await FlutterShare.share(
        title: "Ispnacha so'zlashgich",
        linkUrl: 'https://t.me/asadbek_blog1/143',
        chooserTitle: "Ispnacha so'zlashgich");
  }
}
