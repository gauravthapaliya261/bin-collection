import 'package:flutter/material.dart';
import '../core/app_export.dart';

class AppDecoration {
  // Fill decorations
  static BoxDecoration get fillGreen => BoxDecoration(
        color: appTheme.green900,
      );
  static BoxDecoration get fillOnError => BoxDecoration(
        color: theme.colorScheme.onError,
      );
  static BoxDecoration get fillYellowB => BoxDecoration(
        color: appTheme.yellow500B5,
      );
// Gradient decorations
  static BoxDecoration get gradientGrayToPrimary => BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment(-0.12, 0.5),
          end: Alignment(1, 0.5),
          colors: [appTheme.gray700, theme.colorScheme.primary],
        ),
      );
  static BoxDecoration get gradientPrimaryToGray => BoxDecoration(
        border: Border.all(
          color: theme.colorScheme.primary,
          width: 1.h,
        ),
        gradient: LinearGradient(
          begin: Alignment(0.5, 0),
          end: Alignment(0.5, 1),
          colors: [theme.colorScheme.primary, appTheme.gray500],
        ),
      );
  static BoxDecoration get gradientPrimaryToGray500 => BoxDecoration(
        border: Border.all(
          color: theme.colorScheme.primary,
          width: 1.h,
        ),
        gradient: LinearGradient(
          begin: Alignment(0.5, 0),
          end: Alignment(0.5, 1),
          colors: [theme.colorScheme.primary, appTheme.gray500],
        ),
      );
  static BoxDecoration get gradientPrimaryToOnError => BoxDecoration(
        border: Border.all(
          color: theme.colorScheme.primary,
          width: 1.h,
        ),
        gradient: LinearGradient(
          begin: Alignment(0.5, 0),
          end: Alignment(0.5, 1),
          colors: [theme.colorScheme.primary, theme.colorScheme.onError],
        ),
      );
// Outline decorations
  static BoxDecoration get outlineOnError => BoxDecoration(
        border: Border(
          top: BorderSide(
            color: theme.colorScheme.onError,
            width: 1.h,
          ),
        ),
      );
  static BoxDecoration get outlineOnError1 => BoxDecoration(
        color: theme.colorScheme.primary,
        border: Border(
          top: BorderSide(
            color: theme.colorScheme.onError,
            width: 1.h,
          ),
          bottom: BorderSide(
            color: theme.colorScheme.onError,
            width: 1.h,
          ),
        ),
      );
  static BoxDecoration get outlineOnError2 => BoxDecoration(
        color: theme.colorScheme.primary,
        border: Border(
          bottom: BorderSide(
            color: theme.colorScheme.onError,
            width: 1.h,
          ),
        ),
      );
  static BoxDecoration get outlineOnError3 => BoxDecoration(
        border: Border(
          top: BorderSide(
            color: theme.colorScheme.onError,
            width: 1.h,
          ),
          bottom: BorderSide(
            color: theme.colorScheme.onError,
            width: 1.h,
          ),
        ),
      );
  static BoxDecoration get outlinePrimary => BoxDecoration(
        color: theme.colorScheme.onError,
        border: Border.all(
          color: theme.colorScheme.primary,
          width: 1.h,
        ),
      );
  static BoxDecoration get outlinePrimaryContainer => BoxDecoration(
        color: theme.colorScheme.primary,
        boxShadow: [
          BoxShadow(
            color: theme.colorScheme.primaryContainer,
            spreadRadius: 2.h,
            blurRadius: 2.h,
            offset: Offset(
              0,
              4,
            ),
          )
        ],
      );
  static BoxDecoration get outlinePrimaryContainer1 => BoxDecoration();
  static BoxDecoration get outlinePrimaryContainer2 => BoxDecoration(
        color: theme.colorScheme.onError,
        boxShadow: [
          BoxShadow(
            color: theme.colorScheme.primaryContainer,
            spreadRadius: 2.h,
            blurRadius: 2.h,
            offset: Offset(
              0,
              4,
            ),
          )
        ],
      );
  static BoxDecoration get outlinePrimary1 => BoxDecoration(
        color: theme.colorScheme.primary,
        border: Border.all(
          color: theme.colorScheme.primary,
          width: 1.h,
        ),
      );
  static BoxDecoration get outlinePrimary2 => BoxDecoration(
        border: Border.all(
          color: theme.colorScheme.primary,
          width: 1.h,
        ),
      );
  static BoxDecoration get outlinePrimary3 => BoxDecoration(
        color: theme.colorScheme.errorContainer,
        border: Border(
          bottom: BorderSide(
            color: theme.colorScheme.primary,
            width: 1.h,
          ),
        ),
      );
}

class BorderRadiusStyle {
  // Rounded borders
  static BorderRadius get roundedBorder10 => BorderRadius.circular(
        10.h,
      );
  static BorderRadius get roundedBorder15 => BorderRadius.circular(
        15.h,
      );
  static BorderRadius get roundedBorder20 => BorderRadius.circular(
        20.h,
      );
  static BorderRadius get roundedBorder5 => BorderRadius.circular(
        5.h,
      );
  static BorderRadius get roundedBorder55 => BorderRadius.circular(
        55.h,
      );
}
