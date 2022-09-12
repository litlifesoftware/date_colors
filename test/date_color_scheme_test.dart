import 'dart:ui';

import 'package:date_colors/date_colors.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  // Unit Test: `DateColorController`
  DateTime d = DateTime(2017, 9, 7);
  DateColorScheme scheme = DateColorScheme(d);

  test('UT-DCS01-CorrectColorOfTheYear', () {
    Color c = scheme.colorOfYear;
    expect(c, const Color(0xFF951F1D));
  });

  test('UT-DCS02-CorrectColorOfTheSeason', () {
    Color c = scheme.colorOfTheSeason;
    expect(c, const Color(0xFFA7A9AD));
  });

  test('UT-DCS03-CorrectCombinedColor', () {
    Color c = scheme.combinedColor;
    expect(c, const Color(0xFF9e6465));
  });

  test('UT-DCS04-CorrectUniqueColorOfTheYear', () {
    Color c = scheme.uniqueColorOfTheYear;
    expect(c, const Color(0xFF8d8818));
  });

  test('UT-DCS05-CorrectUniqueDateColor', () {
    Color c = scheme.uniqueDateColor;
    expect(c, const Color(0xFF73abc5));
  });
}
