import 'package:date_colors/src/data/colors_of_january.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:date_colors/date_colors.dart';

void main() {
  // Unit Test: `ColorsOfTheYear`
  test('UT-COTH01-VerifiesWhetherAllColorsArePresent', () {
    final int mapLength = ColorsOfTheYear.length;
    expect(mapLength, 10);
  });
  test('UT-COTH02-VerifiesWhetherTheFirstColorMatchesSpecifications', () {
    final int? color = ColorsOfTheYear.values[0];
    expect(color, 0xFF6c6874);
  });
  // Unit Test: `ColorsOfJanuary`
  test('UT-COJ01-VerifiesWhetherAllColorsArePresent', () {
    final int mapLength = ColorsOfJanuary.length;
    expect(mapLength, 31);
  });
  test('UT-COTH02-VerifiesWhetherTheFirstColorMatchesSpecifications', () {
    final int? color = ColorsOfJanuary.values[1];
    expect(color, 0xFF015696);
  });
}
