import 'dart:ui';

import 'package:date_colors/src/controller/date_color_controller.dart';

/// A scheme containing appropriate color values based on a `DateTime` object.
///
/// - The color scheme contains a color for the year, a color for the season
/// and a combined color of both.
/// - Furthermore it allows to generate unique colors for the year and the
/// date.
class DateColorScheme {
  /// The [DateTime] object, the scheme will be based on.
  final DateTime date;

  /// The [DateColorController] instance allowing to generate the corresponding
  /// color values.
  final DateColorController controller = const DateColorController();

  /// Creates a [DateColorScheme].
  const DateColorScheme(this.date);

  /// Returns a [Color] based on the elements represented on the Chinese Zodiac.
  ///
  /// - The Color of the Year pattern only contains 5 colors. If repeated color
  /// patterns should be avoided, use the [generateUniqueYearColor] method to
  /// generate an unique color for every year.
  Color get colorOfYear {
    return controller.generateYearColor(date.year);
  }

  /// Returns the [Color] of the season.
  ///
  /// - The color value will be repeated year by year on the same calendar day.
  Color get colorOfTheSeason {
    return controller.generateSeasonColor(date.month, date.day);
  }

  /// Returns a combined [Color] based on the [Color] of the year and the
  /// [Color] of the season.
  Color get combinedColor {
    return controller.generateCombinedSeasonYearColor(
        date.year, date.month, date.day);
  }

  /// Returns an unique [Color] based on the provided year.
  ///
  /// - The color value will be different year by year.
  Color get uniqueColorOfTheYear {
    return controller.generateUniqueYearColor(date.year);
  }

  /// Returns an unique [Color] for the date.
  ///
  /// - The color value will be different day by day and year by year.
  Color get uniqueDateColor {
    return controller.generateUniqueDateColor(date);
  }
}
