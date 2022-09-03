import 'package:flutter_test/flutter_test.dart';

import 'package:date_colors/date_colors.dart';

void main() {
  // Unit Test: `ColorsOfTheYear`
  test('UT-COTY01-VerifiesWhetherAllColorsArePresent', () {
    final ColorsOfTheYear coty = ColorsOfTheYear();
    expect(coty.values.length, 10);
  });
  test('UT-COTY02-VerifiesWhetherTheFirstColorMatchesSpecifications', () {
    final ColorsOfTheYear coty = ColorsOfTheYear();
    expect(coty.values[0], 0xFF6c6874);
  });

  // Unit Test: `ColorsOfJanuary`
  test('UT-COJan01-VerifiesWhetherAllColorsArePresent', () {
    final ColorsOfJanuary coJan = ColorsOfJanuary();
    expect(coJan.calendarDays.length, 31);
  });
  test('UT-COJan02-VerifiesWhetherTheFirstColorMatchesSpecifications', () {
    final ColorsOfJanuary coJan = ColorsOfJanuary();
    expect(coJan.values[1], 0xFF015696);
  });

  // Unit Test: `ColorsOfFebruary`
  test('UT-COFeb01-VerifiesWhetherAllColorsArePresent', () {
    final ColorsOfFebruary coFeb = ColorsOfFebruary();
    expect(coFeb.calendarDays.length, 29);
  });
  test('UT-COFeb02-VerifiesWhetherTheFirstColorMatchesSpecifications', () {
    final ColorsOfFebruary coFeb = ColorsOfFebruary();
    expect(coFeb.values[1], 0xFFC60650);
  });

  // Unit Test: `ColorsOfMarch`
  test('UT-COMar01-VerifiesWhetherAllColorsArePresent', () {
    final ColorsOfMarch coMar = ColorsOfMarch();
    expect(coMar.calendarDays.length, 31);
  });
  test('UT-COMar02-VerifiesWhetherTheFirstColorMatchesSpecifications', () {
    final ColorsOfMarch coMar = ColorsOfMarch();
    expect(coMar.values[1], 0xFFC4B600);
  });

  // Unit Test: `ColorsOfApril`
  test('UT-COApr01-VerifiesWhetherAllColorsArePresent', () {
    final ColorsOfApril coApr = ColorsOfApril();
    expect(coApr.calendarDays.length, 30);
  });
  test('UT-COApr02-VerifiesWhetherTheFirstColorMatchesSpecifications', () {
    final ColorsOfApril coApr = ColorsOfApril();
    expect(coApr.values[1], 0xFFFFF798);
  });

  // Unit Test: `ColorsOfMay`
  test('UT-COMay01-VerifiesWhetherAllColorsArePresent', () {
    final ColorsOfMay coMay = ColorsOfMay();
    expect(coMay.calendarDays.length, 31);
  });
  test('UT-COMay02-VerifiesWhetherTheFirstColorMatchesSpecifications', () {
    final ColorsOfMay coMay = ColorsOfMay();
    expect(coMay.values[1], 0xFFDDDAED);
  });

  // Unit Test: `ColorsOfJune`
  test('UT-COJun01-VerifiesWhetherAllColorsArePresent', () {
    final ColorsOfJune coJun = ColorsOfJune();
    expect(coJun.calendarDays.length, 30);
  });
  test('UT-COJun02-VerifiesWhetherTheFirstColorMatchesSpecifications', () {
    final ColorsOfJune coJun = ColorsOfJune();
    expect(coJun.values[1], 0xFF03B2D0);
  });

  // Unit Test: `ColorsOfJuly`
  test('UT-COJul01-VerifiesWhetherAllColorsArePresent', () {
    final ColorsOfJuly coJul = ColorsOfJuly();
    expect(coJul.calendarDays.length, 31);
  });
  test('UT-COJul02-VerifiesWhetherTheFirstColorMatchesSpecifications', () {
    final ColorsOfJuly coJul = ColorsOfJuly();
    expect(coJul.values[1], 0xFFCEE2F5);
  });

  // Unit Test: `ColorsOfAugust`
  test('UT-COAug01-VerifiesWhetherAllColorsArePresent', () {
    final ColorsOfAugust coAug = ColorsOfAugust();
    expect(coAug.calendarDays.length, 31);
  });
  test('UT-COAug02-VerifiesWhetherTheFirstColorMatchesSpecifications', () {
    final ColorsOfAugust coAug = ColorsOfAugust();
    expect(coAug.values[1], 0xFF9C3921);
  });

  // Unit Test: `ColorsOfSeptember`
  test('UT-COSep01-VerifiesWhetherAllColorsArePresent', () {
    final ColorsOfSeptember coSep = ColorsOfSeptember();
    expect(coSep.calendarDays.length, 30);
  });
  test('UT-COSep02-VerifiesWhetherTheFirstColorMatchesSpecifications', () {
    final ColorsOfSeptember coSep = ColorsOfSeptember();
    expect(coSep.values[1], 0xFFD0D2D4);
  });

  // Unit Test: `ColorsOfOctober`
  test('UT-COOct01-VerifiesWhetherAllColorsArePresent', () {
    final ColorsOfOctober coOct = ColorsOfOctober();
    expect(coOct.calendarDays.length, 31);
  });
  test('UT-COOct02-VerifiesWhetherTheFirstColorMatchesSpecifications', () {
    final ColorsOfOctober coOct = ColorsOfOctober();
    expect(coOct.values[1], 0xFFC04F33);
  });
}
