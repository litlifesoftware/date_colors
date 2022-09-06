import 'package:date_colors/date_colors.dart';

/// A `data` class containg the color values of the month of July.
/// - The color hex codes provided in the manual are converted from 24
/// bit to 32 bit colors by adding the full bits of `FF` at the
/// beginning of each color value.
class ColorsOfJuly implements MonthColorData {
  @override
  Map<int, int> get values => {
        01: 0xFFCEE2F5,
        02: 0xFFB0CAEA,
        03: 0xFF4D84C6,
        04: 0xFF1A4196,
        05: 0xFF123E8D,
        06: 0xFF083479,
        07: 0xFF01235E,
        08: 0xFFB4D6F2,
        09: 0xFF96C0E6,
        10: 0xFF5091CD,
        11: 0xFF0055A6,
        12: 0xFF004990,
        13: 0xFF003F7E,
        14: 0xFF002D62,
        15: 0xFFB7E1F8,
        16: 0xFFA2D9F4,
        17: 0xFF79BDE8,
        18: 0xFF0068B2,
        19: 0xFF015696,
        20: 0xFF00457B,
        21: 0xFF002D57,
        22: 0xFFFAC5C7,
        23: 0xFFF48989,
        24: 0xFFF1635C,
        25: 0xFFF04035,
        26: 0xFFE51D27,
        27: 0xFFB5121B,
        28: 0xFF701401,
        29: 0xFFED3B43,
        30: 0xFFE61937,
        31: 0xFFC41230,
      };

  @override
  Iterable<int> get calendarDays => values.keys;
}
