import 'package:date_colors/date_colors.dart';

/// A `data` class containg the color values of the month of February.
///
/// - The color hex codes provided in the manual are converted from 24
/// bit to 32 bit colors by adding the full bits of `FF` at the
/// beginning of each color value.
class ColorsOfFebruary implements MonthColorData {
  @override
  Map<int, int> get values => {
        01: 0xFFC60650,
        02: 0xFFA40047,
        03: 0xFFF5C6DC,
        04: 0xFFDD87B9,
        05: 0xFFF38AB7,
        06: 0xFFD85AA2,
        07: 0xFFB81A8D,
        08: 0xFFAF006E,
        09: 0xFFF5C6DC,
        10: 0xFFDE87B9,
        11: 0xFFC958A3,
        12: 0xFFBA2C92,
        13: 0xFFA51984,
        14: 0xFF860D71,
        15: 0xFFFBC8CB,
        16: 0xFFF5A0A6,
        17: 0xFFF1757B,
        18: 0xFFED3B43,
        19: 0xFFE61937,
        20: 0xFF015696,
        21: 0xFFE71A39,
        22: 0xFF860039,
        23: 0xFF8B1E03,
        24: 0xFF7C3A00,
        25: 0xFF7C0040,
        26: 0xFFE70E65,
        27: 0xFFEE4F90,
        28: 0xFFF38BB5,
        29: 0xFFFF73F3,
      };

  @override
  Iterable<int> get calendarDays => values.keys;
}
