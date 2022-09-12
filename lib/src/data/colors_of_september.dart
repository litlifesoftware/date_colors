import 'package:date_colors/date_colors.dart';

/// A `data` class containg the color values of the month of September.
///
/// - The color hex codes provided in the manual are converted from 24
/// bit to 32 bit colors by adding the full bits of `FF` at the
/// beginning of each color value.
class ColorsOfSeptember implements MonthColorData {
  @override
  Map<int, int> get values => {
        01: 0xFFD0D2D4,
        02: 0xFFA7A9AD,
        03: 0xFF939599,
        04: 0xFF818384,
        05: 0xFFBCBEC0,
        06: 0xFFBCBEC0,
        07: 0xFFA7A9AD,
        08: 0xFF939599,
        09: 0xFF818384,
        10: 0xFF6D6F71,
        11: 0xFF58585B,
        12: 0xFF3A3A3C,
        13: 0xFFA7A9AD,
        14: 0xFF939599,
        15: 0xFF818384,
        16: 0xFF6D6F71,
        17: 0xFF58585B,
        18: 0xFF3A3A3C,
        19: 0xFF000000,
        20: 0xFFF3F3F3,
        21: 0xFFE6E8EA,
        22: 0xFFD0D2D4,
        23: 0xFFA7A9AD,
        24: 0xFF959597,
        25: 0xFF818384,
        26: 0xFF818384,
        27: 0xFFD0D2D4,
        28: 0xFFBCBEC0,
        29: 0xFFA7A9AD,
        30: 0xFF939599,
      };

  @override
  Iterable<int> get calendarDays => values.keys;
}
