import 'dart:convert';
import 'dart:ui';

import 'package:crypto/crypto.dart';
import 'package:date_colors/date_colors.dart';

/// A `controller` class implementing the DateColors' core logics.
class DateColorController {
  /// Creates a [DateColorController].
  const DateColorController();

  /// A error value stating that a color is invalid.
  static const int _invalidColorError = -100;

  /// The year's color values.
  static final ColorsOfTheYear _coty = ColorsOfTheYear();

  /// Generates a [Color] based on the provided [year] value.
  Color generateYearColor(int year) {
    for (int i in _coty.lastDigitsOfYears) {
      if (year.toString().endsWith(i.toString())) {
        int cv = _coty.values[i] ?? _invalidColorError;
        if (cv == _invalidColorError) {
          throw Exception("DateColorController: No matching color found for "
              "`generateYearColor`");
        }
        return Color(cv);
      }
    }

    throw Exception(
        'DateColorController: Invalid year provided on `generateYearColor`');
  }

  /// Generates the [Color] on the season based on the provided [month] and
  /// [day] values.
  Color generateSeasonColor(int month, int day) {
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
        throw (Exception("DateColorController: Invalid month provided "
            "on `generateSeasonColor`"));
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
        'DateColorController: Invalid year provided on `generateColorOfSeason`');
  }

  /// Generates a combined [Color] based on the year and season colors.
  Color generateCombinedSeasonYearColor(int year, int month, int day,
      {double balance = 0.5}) {
    Color? coty;
    Color? cots;
    Color? lerp;

    try {
      coty = generateYearColor(year);
      cots = generateSeasonColor(month, day);
    } catch (e) {
      throw Exception("DateColorController: Invalid date provided on"
          "`generateCombinedSeasonYearColor`");
    }

    lerp = Color.lerp(coty, cots, balance);

    if (lerp != null) {
      return lerp;
    }

    throw throw Exception("DateColorController: Invalid date provided on"
        "`generateCombinedSeasonYearColor`");
  }

  /// Generates an unique [Color] based on the provided [year] value.
  Color generateUniqueYearColor(int year) {
    List<int> bytes = utf8.encode(year.toString());
    String hex = "FF" + (md5.convert(bytes).toString().substring(0, 6));
    int cv = int.tryParse(hex, radix: 16) ?? _invalidColorError;

    if (cv != _invalidColorError) {
      return Color(cv);
    }

    throw Exception("DateColorController: Error parsing year argument on "
        "generateUniqueYearColor");
  }

  /// Generates an unique [Color] based on the provided [date] value.
  Color generateUniqueDateColor(DateTime date) {
    List<int> bytes = utf8.encode(date.microsecondsSinceEpoch.toString());
    String hex = "FF" + (md5.convert(bytes).toString().substring(0, 6));
    int cv = int.tryParse(hex, radix: 16) ?? _invalidColorError;
    if (cv != _invalidColorError) {
      return Color(cv);
    }
    throw Exception("DateColorController: Error parsing date argument on "
        "generateUniqueDateColor");
  }
}
