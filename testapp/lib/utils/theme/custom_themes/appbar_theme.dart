import 'package:flutter/material.dart';

class TAppbarTheme {
  TAppbarTheme._();

  static const lightAppBarTheme = AppBarTheme(
    centerTitle: false,
    elevation: 0,
    foregroundColor: Colors.transparent,
    backgroundColor: Colors.transparent,
    scrolledUnderElevation: 0,
    iconTheme: IconThemeData(color: Colors.black, size: 24),
    actionsIconTheme: IconThemeData(color: Colors.black, size: 24),
    titleTextStyle: TextStyle(
      fontSize: 18.0,
      fontWeight: FontWeight.w600,
      color: Colors.black,
    ),
  );

  static const darkAppBarTheme = AppBarTheme(
    centerTitle: false,
    elevation: 0,
    foregroundColor: Colors.transparent,
    backgroundColor: Colors.transparent,
    scrolledUnderElevation: 0,
    iconTheme: IconThemeData(color: Colors.black, size: 24),
    actionsIconTheme: IconThemeData(color: Colors.white, size: 24),
    titleTextStyle: TextStyle(
      fontSize: 18.0,
      fontWeight: FontWeight.w600,
      color: Colors.white,
    ),
  );
}
