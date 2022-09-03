import 'package:date_colors/date_colors.dart';

/// A `data` class containg the color values of the month of November.
/// - The color hex codes provided in the manual are converted from 24
/// bit to 32 bit colors by adding the full bits of `FF` at the
/// beginning of each color value.
class ColorsOfNovember implements MonthColors {
  @override
  Map<int, int> get values => {
        01: 0xFFF5911F,
        02: 0xFFD18315,
        03: 0xFFB06E0C,
        04: 0xFFFDE2B9,
        05: 0xFFFDCD99,
        06: 0xFFF9A25E,
        07: 0xFFF58026,
        08: 0xFFE4701E,
        09: 0xFFB25D11,
        10: 0xFF744200,
        11: 0xFFF6F490,
        12: 0xFFE9E927,
        13: 0xFFECE729,
        14: 0xFFBAB502,
        15: 0xFFA89A00,
        16: 0xFFA49B01,
        17: 0xFF7B7000,
        18: 0xFFF6F0B5,
        19: 0xFFF5EAA3,
        20: 0xFFF0E38D,
        21: 0xFFE7D766,
        22: 0xFFC2A302,
        23: 0xFFA28800,
        24: 0xFF776200,
        25: 0xFFE7DAAC,
        26: 0xFFDAC893,
        27: 0xFFCAB777,
        28: 0xFFB1943A,
        29: 0xFF9C7E0F,
        30: 0xFF6E5300,
      };

  @override
  Iterable<int> get calendarDays => values.keys;
}
