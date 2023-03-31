import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

final appThemeData = ThemeData(
  // colorScheme:
  //     ColorScheme.fromSwatch().copyWith(secondary: AppColors.primaryColor),
  appBarTheme: const AppBarTheme(
    color: Colors.white,
    elevation: 0,
  
    iconTheme: IconThemeData(color: Colors.black),
    systemOverlayStyle: SystemUiOverlayStyle(
      
      statusBarColor: Colors.transparent,
      systemNavigationBarColor: Colors.transparent,
      statusBarIconBrightness: Brightness.dark,
      statusBarBrightness: Brightness.light,
      systemNavigationBarIconBrightness: Brightness.dark,
    ),
    centerTitle: true,
  ),
  // fontFamily: 'SFPro',
  cupertinoOverrideTheme: const CupertinoThemeData(brightness: Brightness.dark),
  visualDensity: VisualDensity.adaptivePlatformDensity,
  primarySwatch: Colors.red,
  pageTransitionsTheme: const PageTransitionsTheme(builders: {
    TargetPlatform.android: CupertinoPageTransitionsBuilder(),
    TargetPlatform.iOS: CupertinoPageTransitionsBuilder(),
  }),
);