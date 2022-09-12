import 'dart:ui';

import 'package:date_colors/date_colors.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  // Unit Test: `DateColorController`
  test('UT-DCC01-CorrectColorOfTheYear', () {
    DateColorController con = const DateColorController();
    Color c = con.generateColorOfYear(2011);
    expect(c, const Color(0xFF6C6874));
  });
  test('UT-DCC02-CorrectColorOfTheYear', () {
    DateColorController con = const DateColorController();
    Color c = con.generateColorOfYear(2002);
    expect(c, const Color(0xFFA1E8D9));
  });

  test('UT-DCC03-CorrectColorOfTheSeason', () {
    DateColorController con = const DateColorController();
    Color c = con.generateColorOfSeason(DateTime.june, 15);
    expect(c, const Color(0xFF00B5CC));
  });
  test('UT-DCC04-CorrectColorOfTheSeason', () {
    DateColorController con = const DateColorController();
    Color c = con.generateColorOfSeason(DateTime.september, 4);
    expect(c, const Color(0xFF818384));
  });

  test('UT-DCC05-CorrectUniqueColorOfTheYear', () {
    DateColorController con = const DateColorController();
    Color c = con.generateUniqueColorOfYear(2011);
    expect(c, const Color(0xffc8758b));
  });
  test('UT-DCC06-CorrectUniqueColorOfTheYear', () {
    DateColorController con = const DateColorController();
    Color c = con.generateUniqueColorOfYear(2002);
    expect(c, const Color(0xff4ba29b));
  });

  test('UT-DCC07-CorrectUniqueDateColor', () {
    DateColorController con = const DateColorController();
    Color c = con
        .generateUniqueDateColor(DateTime(2011, DateTime.september, 7, 17, 30));
    expect(c, const Color(0xFFde4e37));
  });
  test('UT-DCC08-CorrectUniqueDateColor', () {
    DateColorController con = const DateColorController();
    Color c = con.generateUniqueDateColor(
        DateTime(5000, DateTime.september, 28, 15, 40));
    expect(c, const Color(0xFFcab1d4));
  });
}
