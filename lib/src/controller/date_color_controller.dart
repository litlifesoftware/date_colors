import 'dart:convert';
import 'dart:ui';

import 'package:crypto/crypto.dart';
import 'package:date_colors/date_colors.dart';

/// A `controller` class implementing the [DateColorScheme]'s core logics.
class DateColorController {
  /// Creates a [DateColorController].
  const DateColorController();

  /// A error value stating that a color is invalid.
  static const int _invalidColorError = -100;

  /// The year's color values.
  static final ColorsOfTheYear _coty = ColorsOfTheYear();

  /// Returns a [Color] based on the elements represented on the Chinese Zodiac.
  ///
  /// - The Color of the Year pattern only contains 5 colors. If repeated color
  /// patterns should be avoided, use the [generateUniqueColorOfYear] method to
  /// generate an unique color for every year.
  Color generateColorOfYear(int year) {
    for (int i in _coty.lastDigitsOfYears) {
      if (year.toString().endsWith(i.toString())) {
        int cv = _coty.values[i] ?? _invalidColorError;
        if (cv == _invalidColorError) {
          throw Exception("DateColors: No matching color found for "
              "`generateColorOfYear`");
        }
        return Color(cv);
      }
    }

    throw Exception(
        'DateColors: Invalid year provided on `generateColorOfYear`');
  }

  /// Returns an unique [Color] based on the provided year.
  ///
  /// - The color value will be different year by year.
  Color generateUniqueColorOfYear(int year) {
    List<int> bytes = utf8.encode(year.toString());
    String hex = "FF" + (md5.convert(bytes).toString().substring(0, 6));
    int cv = int.tryParse(hex, radix: 16) ?? _invalidColorError;

    if (cv != _invalidColorError) {
      return Color(cv);
    }

    throw Exception("DateColors: Error parsing year argument on "
        "generateUniqueColorOfYear");
  }

  /// Returns the color of the season based on the provided `month` and `day`
  /// value.
  ///
  /// - The color value will be repeated year by year on the same calendar day.
  Color generateColorOfSeason(int month, int day) {
    MonthColorData? data;

    switch (month) {
      case DateTime.january:
        data = ColorsOfJanuary();
        break;
      case DateTime.february:
        data = ColorsOfFebruary();
        break;
      case DateTime.march:
        data = ColorsOfMarch();
        break;
      case DateTime.april:
        data = ColorsOfApril();
        break;
      case DateTime.may:
        data = ColorsOfMay();
        break;
      case DateTime.june:
        data = ColorsOfJune();
        break;
      case DateTime.july:
        data = ColorsOfJuly();
        break;
      case DateTime.august:
        data = ColorsOfAugust();
        break;
      case DateTime.september:
        data = ColorsOfSeptember();
        break;
      case DateTime.october:
        data = ColorsOfOctober();
        break;
      case DateTime.november:
        data = ColorsOfNovember();
        break;
      case DateTime.december:
        data = ColorsOfDecember();
        break;
      default:
        throw (Exception("DateColors: Invalid month provided "
            "on `generateColorOfSeason`"));
    }
    int cv = _invalidColorError;
    for (int i in data.calendarDays) {
      if (i == day) {
        cv = data.values[i] ?? _invalidColorError;
      }
    }

    if (cv != _invalidColorError) {
      return Color(cv);
    }

    throw Exception(
        'DateColors: Invalid year provided on `generateColorOfSeason`');
  }

  /// Returns an unique [Color] based on the provided [DateTime].
  ///
  /// - The color value will be different day by day and year by year.
  Color generateUniqueDateColor(DateTime date) {
    List<int> bytes = utf8.encode(date.microsecondsSinceEpoch.toString());
    String hex = "FF" + (md5.convert(bytes).toString().substring(0, 6));
    int cv = int.tryParse(hex, radix: 16) ?? _invalidColorError;
    if (cv != _invalidColorError) {
      return Color(cv);
    }
    throw Exception("DateColors: Error parsing date argument on "
        "generateUniqueDateColor");
  }
}
