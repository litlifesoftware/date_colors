import 'package:date_colors/date_colors.dart';

/// A `data` class containg the color values of the month of December.
///
/// - The color hex codes provided in the manual are converted from 24
/// bit to 32 bit colors by adding the full bits of `FF` at the
/// beginning of each color value.
class ColorsOfDecember implements MonthColorData {
  @override
  Map<int, int> get values => {
        01: 0xFF004812,
        02: 0xFFD4EADC,
        03: 0xFFBCE0CB,
        04: 0xFFA1D4B5,
        05: 0xFF1EB35A,
        06: 0xFF00A952,
        07: 0xFF028341,
        08: 0xFF076324,
        09: 0xFFE2EEC3,
        10: 0xFFCFE5A7,
        11: 0xFFB3D98C,
        12: 0xFF7AC142,
        13: 0xFF6EB33F,
        14: 0xFF5E9732,
        15: 0xFF4F7017,
        16: 0xFFF9DCDA,
        17: 0xFFFACCCE,
        18: 0xFFF8B5B9,
        19: 0xFFF5A2A9,
        20: 0xFFE76E7C,
        21: 0xFFCE4554,
        22: 0xFFB32C33,
        23: 0xFFFDC6C6,
        24: 0xFFF48989,
        25: 0xFFF1635C,
        26: 0xFFF04035,
        27: 0xFFE51B24,
        28: 0xFFB3121B,
        29: 0xFF701401,
        30: 0xFFF8C6C7,
        31: 0xFFF98787,
      };

  @override
  Iterable<int> get calendarDays => values.keys;
}
