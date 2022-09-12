import 'package:date_colors/date_colors.dart';

/// A `data` class containg the color values of the month of October.
///
/// - The color hex codes provided in the manual are converted from 24
/// bit to 32 bit colors by adding the full bits of `FF` at the
/// beginning of each color value.
class ColorsOfOctober implements MonthColorData {
  @override
  Map<int, int> get values => {
        01: 0xFFC04F33,
        02: 0xFFBB3B24,
        03: 0xFFB22016,
        04: 0xFFFAB6A6,
        05: 0xFFF69C88,
        06: 0xFFF15D22,
        07: 0xFFF04035,
        08: 0xFFEE2E24,
        09: 0xFF9F180E,
        10: 0xFF9F180E,
        11: 0xFFFFDCB3,
        12: 0xFFFED39D,
        13: 0xFFFDC17F,
        14: 0xFFFBAF5E,
        15: 0xFFF99D31,
        16: 0xFFF18D1D,
        17: 0xFFE4801C,
        18: 0xFFF2C687,
        19: 0xFFE3A755,
        20: 0xFFC47D13,
        21: 0xFFB3710E,
        22: 0xFF9B5008,
        23: 0xFF7E5538,
        24: 0xFF563520,
        25: 0xFFFCD351,
        26: 0xFFFFC522,
        27: 0xFFF0B410,
        28: 0xFFC5950B,
        29: 0xFFC47D13,
        30: 0xFFB3710E,
        31: 0xFF995106,
      };

  @override
  Iterable<int> get calendarDays => values.keys;
}
