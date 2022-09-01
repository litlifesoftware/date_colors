import 'package:date_colors/date_colors.dart';

/// A `data` class containg the color values of all years.
///
/// - The color hex codes provided in the manual are converted from 24
/// bit to 32 bit colors by adding the full bits of `FF` at the
/// beginning of each color value.
class ColorsOfTheYear implements ColorData {
  @override
  Map<int, int> get values => {
        0: 0xFF6c6874,
        1: 0xFF6c6874,
        2: 0xFFa1e8d9,
        3: 0xFFa1e8d9,
        4: 0xFF593122,
        5: 0xFF593122,
        6: 0xFF951f1d,
        7: 0xFF951f1d,
        8: 0xFF595241,
        9: 0xFF595241,
      };

  Iterable<int> get lastDigitsOfYears => values.keys;
}
