import 'package:flutter/material.dart';
import '../core/app_export.dart';

/// A collection of pre-defined text styles for customizing text appearance,
/// categorized by different font families and weights.
/// Additionally, this class includes extensions on [TextStyle] to easily apply specific font families to text.

class CustomTextStyles {
  // Body text style
  static get bodyLargeGray70001 => theme.textTheme.bodyLarge!.copyWith(
        color: appTheme.gray70001,
        fontWeight: FontWeight.w300,
      );
  static get bodyLargeLight => theme.textTheme.bodyLarge!.copyWith(
        fontWeight: FontWeight.w300,
      );
  static get bodySmallBlack900 => theme.textTheme.bodySmall!.copyWith(
        color: appTheme.black900,
      );
  // Headline text style
  static get headlineLargeBold => theme.textTheme.headlineLarge!.copyWith(
        fontWeight: FontWeight.w700,
      );
  static get headlineLargeGray70001 => theme.textTheme.headlineLarge!.copyWith(
        color: appTheme.gray70001,
        fontWeight: FontWeight.w700,
      );
  // Inter text style
  static get interWhiteA700 => TextStyle(
        color: appTheme.whiteA700,
        fontSize: 90.fSize,
        fontWeight: FontWeight.w200,
      ).inter;
  // Label text style
  static get labelLargeBold => theme.textTheme.labelLarge!.copyWith(
        fontWeight: FontWeight.w700,
      );
  static get labelLargeWhiteA700 => theme.textTheme.labelLarge!.copyWith(
        color: appTheme.whiteA700,
      );
  // Title text style
  static get titleLargeBold => theme.textTheme.titleLarge!.copyWith(
        fontWeight: FontWeight.w700,
      );
  static get titleLargeGray70001 => theme.textTheme.titleLarge!.copyWith(
        color: appTheme.gray70001,
        fontWeight: FontWeight.w700,
      );
  static get titleMedium16 => theme.textTheme.titleMedium!.copyWith(
        fontSize: 16.fSize,
      );
  static get titleMediumBlack900 => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.black900,
      );
  static get titleMediumGray50 => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.gray50,
        fontSize: 16.fSize,
      );
  static get titleMediumGray700 => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.gray700,
        fontWeight: FontWeight.w500,
      );
  static get titleMediumGray800 => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.gray800,
      );
  static get titleMediumGray800Medium => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.gray800,
        fontWeight: FontWeight.w500,
      );
  static get titleMediumLimeA700 => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.limeA700,
        fontSize: 16.fSize,
      );
  static get titleMediumRedA400 => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.redA400,
        fontSize: 16.fSize,
      );
  static get titleMediumSemiBold => theme.textTheme.titleMedium!.copyWith(
        fontSize: 16.fSize,
        fontWeight: FontWeight.w600,
      );
  static get titleSmallBlack900 => theme.textTheme.titleSmall!.copyWith(
        color: appTheme.black900,
        fontWeight: FontWeight.w700,
      );
  static get titleSmallBold => theme.textTheme.titleSmall!.copyWith(
        fontWeight: FontWeight.w700,
      );
  static get titleSmallGray70001 => theme.textTheme.titleSmall!.copyWith(
        color: appTheme.gray70001,
      );
}

extension on TextStyle {
  TextStyle get inter {
    return copyWith(
      fontFamily: 'Inter',
    );
  }
}
