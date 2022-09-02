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
}
