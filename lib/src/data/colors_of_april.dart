import 'package:date_colors/date_colors.dart';

/// A `data` class containg the color values of the month of April.
///
/// - The color hex codes provided in the manual are converted from 24
/// bit to 32 bit colors by adding the full bits of `FF` at the
/// beginning of each color value.
class ColorsOfApril implements MonthColorData {
  @override
  Map<int, int> get values => {
        01: 0xFFFFF798,
        02: 0xFFFFF552,
        03: 0xFFFFF216,
        04: 0xFFFFF100,
        05: 0xFFDCC701,
        06: 0xFFC1AF01,
        07: 0xFF968A00,
        08: 0xFFFFE384,
        09: 0xFFFEDF6A,
        10: 0xFFFFD24F,
        11: 0xFFFFC522,
        12: 0xFFF0B410,
        13: 0xFFC5950B,
        14: 0xFFAD8707,
        15: 0xFFFFE895,
        16: 0xFFFFDF73,
        17: 0xFFFFD458,
        18: 0xFFFDB913,
        19: 0xFFE8A813,
        20: 0xFFBA8E09,
        21: 0xFF896D00,
        22: 0xFFFFDA95,
        23: 0xFFFDCF81,
        24: 0xFFFDBC60,
        25: 0xFFFAA635,
        26: 0xFFE5981C,
        27: 0xFFAA7208,
        28: 0xFF795200,
        29: 0xFFFFE1B9,
        30: 0xFFFDCD99,
      };

  @override
  Iterable<int> get calendarDays => values.keys;
}
