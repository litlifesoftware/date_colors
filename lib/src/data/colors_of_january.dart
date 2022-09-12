import 'package:date_colors/date_colors.dart';

/// A `data` class containg the color values of the month of January.
///
/// - The color hex codes provided in the manual are converted from 24
/// bit to 32 bit colors by adding the full bits of `FF` at the
/// beginning of each color value.
class ColorsOfJanuary implements MonthColorData {
  @override
  Map<int, int> get values => {
        01: 0xFF015696,
        02: 0xFF00457B,
        03: 0xFF002D57,
        04: 0xFF98A5D3,
        05: 0xFF7786C3,
        06: 0xFF5261AC,
        07: 0xFF253692,
        08: 0xFF223086,
        09: 0xFF1C2171,
        10: 0xFF14135F,
        11: 0xFFB1A4CD,
        12: 0xFF9C8CC4,
        13: 0xFF7A68AE,
        14: 0xFF51308F,
        15: 0xFF54298C,
        16: 0xFF542381,
        17: 0xFF49176C,
        18: 0xFF89D4DF,
        19: 0xFF43C4D4,
        20: 0xFF00B5CC,
        21: 0xFF009FC2,
        22: 0xFF008EA9,
        23: 0xFF00788B,
        24: 0xFF00535E,
        25: 0xFF006AAA,
        26: 0xFF18388B,
        27: 0xFF20368E,
        28: 0xFF512F91,
        29: 0xFF512B8A,
        30: 0xFF542381,
        31: 0xFF49176C,
      };

  @override
  Iterable<int> get calendarDays => values.keys;
}
