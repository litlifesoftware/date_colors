import 'package:date_colors/date_colors.dart';

/// A `data` class containg the color values of the month of March.
/// - The color hex codes provided in the manual are converted from 24
/// bit to 32 bit colors by adding the full bits of `FF` at the
/// beginning of each color value.
class ColorsOfMarch implements MonthColors {
  @override
  Map<int, int> get values => {
        01: 0xFFC4B600,
        02: 0xFFA89A00,
        03: 0xFF7B7000,
        04: 0xFFEBEE8B,
        05: 0xFFE4E86C,
        06: 0xFFD6E03D,
        07: 0xFFC1D82F,
        08: 0xFFB2BC19,
        09: 0xFF9FA713,
        10: 0xFF817D00,
        11: 0xFFE1EEC3,
        12: 0xFFCFE5A7,
        13: 0xFFB3D98C,
        14: 0xFF7AC142,
        15: 0xFF6EB33F,
        16: 0xFF5E9732,
        17: 0xFF4F7017,
        18: 0xFFD4EADC,
        19: 0xFFBBE1CB,
        20: 0xFFA0D5B5,
        21: 0xFF1EB35A,
        22: 0xFF1EB458,
        23: 0xFF00843F,
        24: 0xFF1A5D2B,
        25: 0xFFB9E1CB,
        26: 0xFF9ED4BB,
        27: 0xFF73C6A3,
        28: 0xFF00A260,
        29: 0xFF008752,
        30: 0xFF006F3C,
        31: 0xFF014810,
      };

  @override
  Iterable<int> get calendarDays => values.keys;
}
