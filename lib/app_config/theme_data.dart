import 'package:flutter/material.dart';
import '../blocs/settings_bloc.dart';

SnackBarThemeData _snackBarTheme = const SnackBarThemeData(
  behavior: SnackBarBehavior.floating,
);

AppBarTheme get _appBarTheme => const AppBarTheme(
      centerTitle: true,
      elevation: 0,
    );

InputDecorationTheme get _inputDecorationTheme => InputDecorationTheme(
      border: OutlineInputBorder(),
      focusedBorder: OutlineInputBorder(
        borderSide: BorderSide(
          color: _colorScheme.secondary,
        ),
      ),
      labelStyle: TextStyle(color: _colorScheme.secondary),
    );

InputDecorationTheme get _inputDecorationThemeLight => InputDecorationTheme(
      border: OutlineInputBorder(),
      focusedBorder: OutlineInputBorder(
        borderSide: BorderSide(
          color: _colorSchemeLight.secondary,
        ),
      ),
      labelStyle: TextStyle(color: _colorSchemeLight.secondary),
    );

DividerThemeData get _dividerThemeData => const DividerThemeData(
      space: 1,
      color: Color.fromRGBO(128, 128, 128, 1),
    );

TextSelectionThemeData get _textSelectionThemeData =>
    const TextSelectionThemeData(
      selectionColor: Color.fromRGBO(57, 161, 238, 0.3),
      cursorColor: Color.fromRGBO(57, 161, 238, 1),
      selectionHandleColor: Color.fromRGBO(57, 161, 238, 1),
    );

BottomNavigationBarThemeData get _bottomNavigationBarThemeData =>
    BottomNavigationBarThemeData(
      backgroundColor: _colorScheme.primary,
      selectedItemColor: _colorScheme.secondary,
    );
BottomNavigationBarThemeData get _bottomNavigationBarThemeDataLight =>
    BottomNavigationBarThemeData(
      backgroundColor: _colorSchemeLight.surface,
      selectedItemColor: _colorSchemeLight.secondary,
    );

ElevatedButtonThemeData get _elevatedButtonThemeData => ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        primary: _colorScheme.secondary,
        onPrimary: _colorScheme.onSecondary,
      ),
    );
ElevatedButtonThemeData get _elevatedButtonThemeDataLight =>
    ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        primary: _colorSchemeLight.secondary,
        onPrimary: _colorSchemeLight.onSecondary,
      ),
    );

TextButtonThemeData get _textButtonThemeData => TextButtonThemeData(
      style: TextButton.styleFrom(
        primary: _colorScheme.secondary,
      ),
    );
TextButtonThemeData get _textButtonThemeDataLight => TextButtonThemeData(
      style: TextButton.styleFrom(
        primary: _colorSchemeLight.secondary,
      ),
    );

OutlinedButtonThemeData get _outlinedButtonThemeData => OutlinedButtonThemeData(
      style: OutlinedButton.styleFrom(
        primary: _colorScheme.secondary,
        onSurface: _colorScheme.onSecondary,
      ),
    );

OutlinedButtonThemeData get _outlinedButtonThemeDataLight =>
    OutlinedButtonThemeData(
      style: OutlinedButton.styleFrom(
        primary: _colorSchemeLight.secondary,
        onSurface: _colorSchemeLight.onSecondary,
      ),
    );

ProgressIndicatorThemeData get _progressIndicatorThemeData =>
    ProgressIndicatorThemeData(
      color: _colorScheme.secondary,
    );
ProgressIndicatorThemeData get _progressIndicatorThemeDataLight =>
    ProgressIndicatorThemeData(
      color: _colorSchemeLight.secondary,
    );

SliderThemeData get _sliderThemeData => SliderThemeData(
      inactiveTrackColor: _colorScheme.secondary.withOpacity(0.3),
      activeTrackColor: _colorScheme.secondary,
      activeTickMarkColor: _colorScheme.onSurface,
      inactiveTickMarkColor: _colorScheme.secondary,
      valueIndicatorTextStyle: TextStyle(color: _colorScheme.primary),
      overlayColor: _colorScheme.secondary.withOpacity(0.2),
      thumbColor: _colorScheme.secondary,
    );

SliderThemeData get _sliderThemeDataLight => SliderThemeData(
      inactiveTrackColor: _colorSchemeLight.secondary.withOpacity(0.3),
      activeTrackColor: _colorSchemeLight.secondary,
      activeTickMarkColor: _colorSchemeLight.onSurface,
      inactiveTickMarkColor: _colorSchemeLight.secondary,
      valueIndicatorTextStyle: TextStyle(color: _colorSchemeLight.primary),
      overlayColor: _colorSchemeLight.secondary.withOpacity(0.2),
      thumbColor: _colorSchemeLight.secondary,
    );

// Color scheme dark adapted from current dev
ColorScheme get _colorScheme => const ColorScheme(
      primary: Color.fromRGBO(42, 54, 71, 1),
      primaryVariant: Color.fromRGBO(28, 36, 48, 1),
      secondary: Color.fromRGBO(38, 179, 255, 1),
      secondaryVariant: Color.fromRGBO(38, 179, 255, 1),
      surface: Color.fromRGBO(42, 54, 71, 1),
      background: Color.fromRGBO(30, 42, 58, 1),
      error: Color.fromRGBO(202, 78, 61, 1),
      onPrimary: Color.fromRGBO(255, 255, 255, 1),
      onSecondary: Color.fromRGBO(255, 255, 255, 1),
      onSurface: Color.fromRGBO(255, 255, 255, 1),
      onBackground: Color.fromRGBO(255, 255, 255, 1),
      onError: Color.fromRGBO(255, 255, 255, 1),
      brightness: Brightness.dark,
    );

// Color scheme light adapted from current dev
ColorScheme get _colorSchemeLight => const ColorScheme(
      primary: Color.fromRGBO(255, 255, 255, 1),
      primaryVariant: Color.fromRGBO(183, 187, 191, 1),
      secondary: Color.fromRGBO(38, 179, 255, 1),
      secondaryVariant: Color.fromRGBO(38, 179, 255, 1),
      surface: Color.fromRGBO(255, 255, 255, 1),
      background: Color.fromRGBO(245, 245, 245, 1),
      error: Color.fromRGBO(202, 78, 61, 1),
      onPrimary: Color.fromRGBO(69, 96, 120, 1),
      onSecondary: Color.fromRGBO(255, 255, 255, 1),
      onSurface: Color.fromRGBO(69, 96, 120, 1),
      onBackground: Color.fromRGBO(69, 96, 120, 1),
      onError: Color.fromRGBO(255, 255, 255, 1),
      brightness: Brightness.light,
    );

// MRC: The properties of the themes have been greatly rectored so we can mostly
// focus on colorScheme and on component themes

ThemeData getThemeDark() => ThemeData(
      fontFamily: 'Ubuntu',
      colorScheme: _colorScheme,
      primaryColor: _colorScheme.primary,
      primaryColorDark: _colorScheme.primaryVariant,
      toggleableActiveColor: _colorScheme.secondary,
      cardColor: _colorScheme.surface,
      scaffoldBackgroundColor: _colorScheme.background,
      errorColor: _colorScheme.error,
      brightness: _colorScheme.brightness,
      hintColor: _colorScheme.onSurface.withOpacity(0.4),
      dialogBackgroundColor: const Color.fromRGBO(42, 54, 71, 1),
      disabledColor: const Color.fromRGBO(201, 201, 201, 1),
      dividerColor: _dividerThemeData.color,
      bottomAppBarColor: _colorScheme.primary,
      snackBarTheme: _snackBarTheme,
      appBarTheme: _appBarTheme,
      inputDecorationTheme: _inputDecorationTheme,
      dividerTheme: _dividerThemeData,
      textSelectionTheme: _textSelectionThemeData,
      bottomNavigationBarTheme: _bottomNavigationBarThemeData,
      elevatedButtonTheme: _elevatedButtonThemeData,
      textButtonTheme: _textButtonThemeData,
      outlinedButtonTheme: _outlinedButtonThemeData,
      progressIndicatorTheme: _progressIndicatorThemeData,
      sliderTheme: _sliderThemeData,
    );

ThemeData getThemeLight() => ThemeData(
      fontFamily: 'Ubuntu',
      colorScheme: _colorSchemeLight,
      primaryColor: _colorSchemeLight.primary,
      primaryColorDark: _colorSchemeLight.primaryVariant,
      toggleableActiveColor: _colorSchemeLight.secondary,
      cardColor: _colorSchemeLight.surface,
      scaffoldBackgroundColor: _colorSchemeLight.background,
      errorColor: _colorSchemeLight.error,
      brightness: _colorSchemeLight.brightness,
      hintColor: _colorSchemeLight.onSurface.withOpacity(0.7),
      dialogBackgroundColor: const Color.fromRGBO(255, 255, 255, 1),
      disabledColor: const Color.fromRGBO(201, 201, 201, 1),
      dividerColor: _dividerThemeData.color,
      bottomAppBarColor: _colorSchemeLight.surface,
      snackBarTheme: _snackBarTheme,
      appBarTheme: _appBarTheme,
      inputDecorationTheme: _inputDecorationThemeLight,
      dividerTheme: _dividerThemeData,
      textSelectionTheme: _textSelectionThemeData,
      bottomNavigationBarTheme: _bottomNavigationBarThemeDataLight,
      elevatedButtonTheme: _elevatedButtonThemeDataLight,
      textButtonTheme: _textButtonThemeDataLight,
      outlinedButtonTheme: _outlinedButtonThemeDataLight,
      progressIndicatorTheme: _progressIndicatorThemeDataLight,
      sliderTheme: _sliderThemeDataLight,
    );

const Color cexColor = Color.fromARGB(200, 253, 247, 227);

const Color cexColorLight = Color.fromRGBO(24, 35, 49, 0.6);

/// The SmallButton style for a ElevatedButton
/// Replaces the old SmallButton widget
ButtonStyle elevatedButtonSmallButtonStyle({EdgeInsets padding}) =>
    ElevatedButton.styleFrom(
      elevation: 0,
      padding: padding,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(30.0),
      ),
    );

// Some variables to simplify the non-Outlined TextFields

InputDecorationTheme get gefaultUnderlineInputTheme {
  return settingsBloc.isLightTheme
      ? InputDecorationTheme(
          enabledBorder: UnderlineInputBorder(
            borderSide:
                BorderSide(color: _colorSchemeLight.secondary.withOpacity(0.3)),
          ),
          focusedBorder: UnderlineInputBorder(
            borderSide: BorderSide(color: _colorSchemeLight.secondary),
          ),
          errorBorder: UnderlineInputBorder(
            borderSide: BorderSide(color: _colorSchemeLight.error),
          ),
        )
      : InputDecorationTheme(
          enabledBorder: UnderlineInputBorder(
            borderSide:
                BorderSide(color: _colorScheme.secondary.withOpacity(0.3)),
          ),
          focusedBorder: UnderlineInputBorder(
            borderSide: BorderSide(color: _colorScheme.secondary),
          ),
          errorBorder: UnderlineInputBorder(
            borderSide: BorderSide(color: _colorScheme.error),
          ),
        );
}
