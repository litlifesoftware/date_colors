import 'package:date_colors/date_colors.dart';

/// A `data` class containg the color values of the month of June.
///
/// - The color hex codes provided in the manual are converted from 24
/// bit to 32 bit colors by adding the full bits of `FF` at the
/// beginning of each color value.
class ColorsOfJune implements MonthColorData {
  @override
  Map<int, int> get values => {
        01: 0xFF03B2D0,
        02: 0xFF00A8C8,
        03: 0xFFD4ECEF,
        04: 0xFFC0E7E5,
        05: 0xFFABDFDF,
        06: 0xFF97D6DA,
        07: 0xFF80CFD4,
        08: 0xFF69C8CD,
        09: 0xFF4FC3C7,
        10: 0xFFD1EDF6,
        11: 0xFF91D7E8,
        12: 0xFF59C9E0,
        13: 0xFF03BBD6,
        14: 0xFF45C4D4,
        15: 0xFF00B5CC,
        16: 0xFF009FC2,
        17: 0xFFF9F4CD,
        18: 0xFFF9F2B9,
        19: 0xFFF0ECBD,
        20: 0xFFEFE6AB,
        21: 0xFFECE29D,
        22: 0xFFEDE183,
        23: 0xFFEEDE52,
        24: 0xFFF7EDD9,
        25: 0xFFE6D5BD,
        26: 0xFFD6C3AE,
        27: 0xFFC7B19D,
        28: 0xFFB49C88,
        29: 0xFF937962,
        30: 0xFF614F3E,
      };

  @override
  Iterable<int> get calendarDays => values.keys;
}
