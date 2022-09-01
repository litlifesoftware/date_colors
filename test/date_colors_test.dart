import 'package:flutter_test/flutter_test.dart';

import 'package:date_colors/date_colors.dart';

void main() {
  test('UT-COTH01-VerifiesWhetherAllColorsArePresent', () {
    final int mapLength = ColorsOfTheYear.length;
    expect(mapLength, 10);
  });
  test('UT-COTH02-VerifiesWhetherTheFirstColorMatchesSpecifications', () {
    final int? color = ColorsOfTheYear.values[0];
    expect(color, 0xFF6c6874);
  });
}
