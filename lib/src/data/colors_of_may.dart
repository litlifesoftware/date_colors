import 'package:date_colors/date_colors.dart';

/// A `data` class containg the color values of the month of May.
/// - The color hex codes provided in the manual are converted from 24
/// bit to 32 bit colors by adding the full bits of `FF` at the
/// beginning of each color value.
class ColorsOfMay implements MonthColors {
  @override
  Map<int, int> get values => {
        01: 0xFFDDDAED,
        02: 0xFFC1BCDE,
        03: 0xFFAB9FCE,
        04: 0xFF9587C0,
        05: 0xFF8070B3,
        06: 0xFFFEF5F8,
        07: 0xFFFAE0EB,
        08: 0xFFFAD0E2,
        09: 0xFFF9C6DB,
        10: 0xFFF9BCD8,
        11: 0xFFF8B1CF,
        12: 0xFFF39AC1,
        13: 0xFFF2DEEB,
        14: 0xFFEDCCE3,
        15: 0xFFEBBED8,
        16: 0xFFE6ACCF,
        17: 0xFFE29EC7,
        18: 0xFFD479B1,
        19: 0xFFD064A6,
        20: 0xFFABDEDA,
        21: 0xFF95D5D1,
        22: 0xFF81CFC9,
        23: 0xFF68C9C3,
        24: 0xFF47C1BA,
        25: 0xFF15BAB5,
        26: 0xFF02B5AD,
        27: 0xFFCCE9F8,
        28: 0xFF9CD6F5,
        29: 0xFF62C8EC,
        30: 0xFF0CB9E7,
        31: 0xFF00AEE2,
      };

  @override
  Iterable<int> get calendarDays => values.keys;
}
