import 'package:flutter_test/flutter_test.dart';

import 'package:date_colors/date_colors.dart';

void main() {
  // Unit Test: `ColorsOfTheYear`
  test('UT-COTY01-VerifiesWhetherAllColorsArePresent', () {
    final int mapLength = ColorsOfTheYear.length;
    expect(mapLength, 10);
  });
  test('UT-COTY02-VerifiesWhetherTheFirstColorMatchesSpecifications', () {
    final int? color = ColorsOfTheYear.values[0];
    expect(color, 0xFF6c6874);
  });

  // Unit Test: `ColorsOfJanuary`
  test('UT-COJan01-VerifiesWhetherAllColorsArePresent', () {
    final int mapLength = ColorsOfJanuary.length;
    expect(mapLength, 31);
  });
  test('UT-COJan02-VerifiesWhetherTheFirstColorMatchesSpecifications', () {
    final int? color = ColorsOfJanuary.values[1];
    expect(color, 0xFF015696);
  });

  // Unit Test: `ColorsOfFebruary`
  test('UT-COFeb01-VerifiesWhetherAllColorsArePresent', () {
    final int mapLength = ColorsOfFebruary.length;
    expect(mapLength, 29);
  });
  test('UT-COFeb02-VerifiesWhetherTheFirstColorMatchesSpecifications', () {
    final int? color = ColorsOfFebruary.values[1];
    expect(color, 0xFFC60650);
  });
}
