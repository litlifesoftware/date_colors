import 'dart:ui';

import 'package:flutter_test/flutter_test.dart';

import 'package:date_colors/date_colors.dart';

void main() {
  // Integration test.
  DateTime date = DateTime(1983, DateTime.january, 1);
  DateColorScheme scheme = DateColorScheme(date);

  test('IT-01-CorrectColorOfTheYear', () {
    expect(scheme.colorOfYear, const Color(0xffa1e8d9));
  });

  test('IT-02-CorrectColorOfTheSeason', () {
    expect(scheme.colorOfTheSeason, const Color(0xff015696));
  });

  test('IT-03-CorrectCombinedColor', () {
    expect(scheme.combinedColor, const Color(0xff519fb7));
  });

  test('IT-04-CorrectUniqueColorOfTheYear', () {
    expect(scheme.uniqueColorOfTheYear, const Color(0xff1e4d36));
  });

  test('IT-05-CorrectDateColor', () {
    expect(scheme.uniqueDateColor, const Color(0xfff86f0b));
  });
}
