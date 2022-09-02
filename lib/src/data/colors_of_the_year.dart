import 'package:date_colors/date_colors.dart';

/// A `data` class containg the color values of all years.
///
/// - The color hex codes provided in the manual are converted from 24
/// bit to 32 bit colors by adding the full bits of `FF` at the
/// beginning of each color value.
class ColorsOfTheYear implements ColorData {
  @override
  Map<int, int> get values => {
        00: 0xFF6C6874,
        01: 0xFF6C6874,
        02: 0xFFA1E8D9,
        03: 0xFFA1E8D9,
        04: 0xFF593122,
        05: 0xFF593122,
        06: 0xFF951F1D,
        07: 0xFF951F1D,
        08: 0xFF595241,
        09: 0xFF595241,
      };

  Iterable<int> get lastDigitsOfYears => values.keys;
}
