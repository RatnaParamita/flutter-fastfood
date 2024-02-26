import 'package:flutter/material.dart';
import 'package:fast_food_app/core/app_export.dart';

class AppDecoration {
  // Fill decorations
  static BoxDecoration get fillGray => BoxDecoration(
        color: appTheme.gray200,
      );
  static BoxDecoration get fillGrayEe => BoxDecoration(
        color: appTheme.gray200Ee,
      );
  static BoxDecoration get fillPrimary => BoxDecoration(
        color: theme.colorScheme.primary,
      );
  static BoxDecoration get fillWhiteA => BoxDecoration(
        color: appTheme.whiteA700.withOpacity(0.3),
      );
  static BoxDecoration get fillWhiteA700 => BoxDecoration(
        color: appTheme.whiteA700,
      );

  // Gradient decorations
  static BoxDecoration get gradientGrayEeToGrayEe => BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment(0.5, 0),
          end: Alignment(0.77, 1),
          colors: [
            appTheme.gray200Ee01,
            appTheme.gray200Ee,
          ],
        ),
      );
  static BoxDecoration get gradientOnPrimaryToGray => BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment(0.5, 0.5),
          end: Alignment(0.63, 0.98),
          colors: [
            theme.colorScheme.onPrimary,
            appTheme.gray40000,
          ],
        ),
      );
  static BoxDecoration get gradientPrimaryToOnError => BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment(0.5, 0),
          end: Alignment(0.81, 1),
          colors: [
            theme.colorScheme.primary,
            theme.colorScheme.onError,
          ],
        ),
      );
  static BoxDecoration get gradientPrimaryToSecondaryContainer => BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment(0.5, 0),
          end: Alignment(0.15, 1.02),
          colors: [
            theme.colorScheme.primary,
            theme.colorScheme.secondaryContainer,
          ],
        ),
      );
}

class BorderRadiusStyle {
  // Circle borders
  static BorderRadius get circleBorder115 => BorderRadius.circular(
        115.h,
      );
  static BorderRadius get circleBorder125 => BorderRadius.circular(
        125.h,
      );

  // Custom borders
  static BorderRadius get customBorderTL50 => BorderRadius.only(
        topLeft: Radius.circular(50.h),
      );

  // Rounded borders
  static BorderRadius get roundedBorder10 => BorderRadius.circular(
        10.h,
      );
  static BorderRadius get roundedBorder20 => BorderRadius.circular(
        20.h,
      );
  static BorderRadius get roundedBorder50 => BorderRadius.circular(
        50.h,
      );
}

// Comment/Uncomment the below code based on your Flutter SDK version.

// For Flutter SDK Version 3.7.2 or greater.

double get strokeAlignInside => BorderSide.strokeAlignInside;

double get strokeAlignCenter => BorderSide.strokeAlignCenter;

double get strokeAlignOutside => BorderSide.strokeAlignOutside;

// For Flutter SDK Version 3.7.1 or less.

// StrokeAlign get strokeAlignInside => StrokeAlign.inside;
//
// StrokeAlign get strokeAlignCenter => StrokeAlign.center;
//
// StrokeAlign get strokeAlignOutside => StrokeAlign.outside;
