import 'package:date_colors/date_colors.dart';

/// A `data` class containg the color values of the month of August.
/// - The color hex codes provided in the manual are converted from 24
/// bit to 32 bit colors by adding the full bits of `FF` at the
/// beginning of each color value.
class ColorsOfAugust implements MonthColorData {
  @override
  Map<int, int> get values => {
        01: 0xFF9C3921,
        02: 0xFFF9B1AC,
        03: 0xFFF48375,
        04: 0xFFF15D3F,
        05: 0xFFF04B23,
        06: 0xFFD54627,
        07: 0xFF9C3921,
        08: 0xFF6E3526,
        09: 0xFFED6850,
        10: 0xFFF48989,
        11: 0xFFF1635C,
        12: 0xFFF04035,
        13: 0xFFE51B24,
        14: 0xFFB5121B,
        15: 0xFF701401,
        16: 0xFFEBB7A7,
        17: 0xFFED6850,
        18: 0xFFE94B37,
        19: 0xFFD5525A,
        20: 0xFFB44B5A,
        21: 0xFF6E3526,
        22: 0xFF9C3921,
        23: 0xFFF9B1AC,
        24: 0xFFF48375,
        25: 0xFFF15D3F,
        26: 0xFFF04B23,
        27: 0xFFD54627,
        28: 0xFF9C3921,
        29: 0xFF703526,
        30: 0xFFED6850,
        31: 0xFFF48989,
      };

  @override
  Iterable<int> get calendarDays => values.keys;
}
