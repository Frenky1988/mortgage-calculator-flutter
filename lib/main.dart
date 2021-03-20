import 'package:flutter/material.dart';
import 'package:mortgage_payment_starter_app/ui/mortgage_app.dart';
import 'package:mortgage_payment_starter_app/util/colors.dart';

final ThemeData _appTheme = _buildAppTheme();

ThemeData _buildAppTheme() {
  final ThemeData base = ThemeData.light();
  return base.copyWith(
      primaryColor: primaryPurple,
      brightness: Brightness.light,
      secondaryHeaderColor: secondaryLightBlueLight,
      accentColor: secondaryLightBlueLight,
      textTheme: _appTextTheme(base.textTheme),
      scaffoldBackgroundColor: secondaryBackgroundWhite,
      cardColor: secondaryLightBlue,
      appBarTheme: AppBarTheme(
          color: primaryPurple, textTheme: _appBarTextTheme(base.textTheme)),
      inputDecorationTheme: InputDecorationTheme(
          border: OutlineInputBorder(
              borderSide: BorderSide(color: primaryPurple),
              borderRadius: BorderRadius.circular(20.0))),
      hintColor: textOnPrimary);
}

TextTheme _appTextTheme(TextTheme base) {
  return base
      .copyWith(
        bodyText2:
            base.bodyText2.copyWith(color: Colors.black87, fontSize: 17.0),
      )
      .apply(
        fontFamily: "Alata",
        bodyColor: textOnPrimary,
      );
}

TextTheme _appBarTextTheme(TextTheme base) {
  return base.copyWith(
      headline6: base.headline6.copyWith(color: textOnPrimary, fontSize: 20.0));
}

void main() => runApp(new MaterialApp(
      home: MortgageApp(),
      theme: _appTheme,
    ));
