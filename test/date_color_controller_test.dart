import 'dart:ui';

import 'package:date_colors/date_colors.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  // Unit Test: `DateColorController`
  test('UT-DCC01-CorrectColorOfTheYear', () {
    DateColorController con = const DateColorController();
    Color c = con.generateYearColor(2011);
    expect(c, const Color(0xFF6C6874));
  });
  test('UT-DCC02-CorrectColorOfTheYear', () {
    DateColorController con = const DateColorController();
    Color c = con.generateYearColor(2002);
    expect(c, const Color(0xFFA1E8D9));
  });

  test('UT-DCC03-CorrectColorOfTheSeason', () {
    DateColorController con = const DateColorController();
    Color c = con.generateSeasonColor(DateTime.june, 15);
    expect(c, const Color(0xFF00B5CC));
  });
  test('UT-DCC04-CorrectColorOfTheSeason', () {
    DateColorController con = const DateColorController();
    Color c = con.generateSeasonColor(DateTime.september, 4);
    expect(c, const Color(0xFF818384));
  });

  test('UT-DCC05-CorrectCombinedColor', () {
    DateColorController con = const DateColorController();
    Color c = con.generateCombinedSeasonYearColor(2017, DateTime.december, 16);
    expect(c, const Color(0xffc77d7b));
  });
  test('UT-DCC06-CorrectCombinedColor', () {
    DateColorController con = const DateColorController();
    Color c = con.generateCombinedSeasonYearColor(2012, DateTime.july, 4);
    expect(c, const Color(0xff5d94b7));
  });

  test('UT-DCC07-CorrectUniqueColorOfTheYear', () {
    DateColorController con = const DateColorController();
    Color c = con.generateUniqueYearColor(2011);
    expect(c, const Color(0xffc8758b));
  });
  test('UT-DCC08-CorrectUniqueColorOfTheYear', () {
    DateColorController con = const DateColorController();
    Color c = con.generateUniqueYearColor(2002);
    expect(c, const Color(0xff4ba29b));
  });

  test('UT-DCC09-CorrectUniqueDateColor', () {
    DateColorController con = const DateColorController();
    Color c = con
        .generateUniqueDateColor(DateTime(2011, DateTime.september, 7, 17, 30));
    expect(c, const Color(0xFFde4e37));
  });
  test('UT-DCC10-CorrectUniqueDateColor', () {
    DateColorController con = const DateColorController();
    Color c = con.generateUniqueDateColor(
        DateTime(5000, DateTime.september, 28, 15, 40));
    expect(c, const Color(0xFFcab1d4));
  });
}
