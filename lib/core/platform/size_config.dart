// Flutter imports:
import 'package:flutter/material.dart';

class SizeConfig {
  static const double padding2 = 2.0;
  static const double padding4 = 4.0;
  static const double padding8 = 8.0;
  static const double padding12 = 12.0;
  static const double padding16 = 16.0;
  static const double padding20 = 20.0;
  static const double padding24 = 24.0;
  static const double padding30 = 30.0;

  final BuildContext context;
  const SizeConfig({required this.context});
  double get screenWidth => MediaQuery.of(context).size.width;
  double get screenHeight => MediaQuery.of(context).size.height;
  bool get isWiderWidth => MediaQuery.of(context).size.height > 700;
  bool get maxPhoneHeight => MediaQuery.of(context).size.height > 600;
  double get onboardButtonWidth => screenWidth < 430 ? 370 : 190;
  double get size35HeightScaled => screenHeight * 0.0385;
  double get size45HeightScaled => screenHeight * 0.0516;
  double get size20HeightScaled => screenHeight * 0.0245;
  double get size15HeightScaled => screenHeight * 0.0176;
  double get size18HeightScaled => screenHeight * 0.022;
  double get size70HeightScaled => screenHeight * 0.084;
  double get size50HeightScaled => screenHeight * 0.061;
  double get size25HeightScaled => screenHeight * 0.031;

  TextStyle get h5Theme => Theme.of(context)
      .textTheme
      .apply(fontSizeFactor: 1)
      .headlineSmall!
      .copyWith(
        fontSize: heightScaledSize(
          Theme.of(context)
              .textTheme
              .apply(fontSizeFactor: 1)
              .headlineSmall!
              .fontSize!,
        ),
      );

  TextStyle get h4Theme => Theme.of(context)
      .textTheme
      .apply(fontSizeFactor: 1)
      .headlineMedium!
      .copyWith(
          fontSize: heightScaledSize(
        Theme.of(context)
            .textTheme
            .apply(fontSizeFactor: 1)
            .headlineMedium!
            .fontSize!,
      ));

  TextStyle get h3Theme => Theme.of(context)
      .textTheme
      .apply(fontSizeFactor: 1)
      .displaySmall!
      .copyWith(
        fontSize: heightScaledSize(
          Theme.of(context)
              .textTheme
              .apply(fontSizeFactor: 1)
              .displaySmall!
              .fontSize!,
        ),
      );

  TextStyle get h2Theme => Theme.of(context)
      .textTheme
      .apply(fontSizeFactor: 1)
      .displayMedium!
      .copyWith(
        fontSize: heightScaledSize(
          Theme.of(context)
              .textTheme
              .apply(fontSizeFactor: 1)
              .displayMedium!
              .fontSize!,
        ),
      );

  TextStyle get h1Theme => Theme.of(context)
      .textTheme
      .apply(fontSizeFactor: 1)
      .displayLarge!
      .copyWith(
        fontSize: heightScaledSize(
          Theme.of(context)
              .textTheme
              .apply(fontSizeFactor: 1)
              .displayLarge!
              .fontSize!,
        ),
      );

  TextStyle get body2Theme =>
      Theme.of(context).textTheme.apply(fontSizeFactor: 1).bodyMedium!.copyWith(
            fontSize: heightScaledSize(
              Theme.of(context)
                  .textTheme
                  .apply(fontSizeFactor: 1)
                  .bodyMedium!
                  .fontSize!,
            ),
          );

  TextStyle get body1Theme =>
      Theme.of(context).textTheme.apply(fontSizeFactor: 1).bodyLarge!.copyWith(
            fontSize: heightScaledSize(
              Theme.of(context)
                  .textTheme
                  .apply(fontSizeFactor: 1)
                  .bodyLarge!
                  .fontSize!,
            ),
          );

  TextStyle get subtitle1Theme => Theme.of(context)
      .textTheme
      .apply(fontSizeFactor: 1)
      .titleMedium!
      .copyWith(
        fontSize: heightScaledSize(
          Theme.of(context).textTheme.titleMedium!.fontSize!,
        ),
      );

  TextStyle get buttonTextTheme =>
      Theme.of(context).textTheme.apply(fontSizeFactor: 1).labelLarge!.copyWith(
          fontSize: heightScaledSize(
              Theme.of(context).textTheme.labelLarge!.fontSize!));

  double heightScaledSize(double size) {
    if (screenHeight >= 700 && screenWidth >= 400) {
      return size;
    }
    if (screenHeight >= 500 && screenWidth > 350) {
      return size * 0.8;
    }

    return size * 0.6;
  }

  Widget spacer() => SizedBox(height: heightScaledSize(10));
}
