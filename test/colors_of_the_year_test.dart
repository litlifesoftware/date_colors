import 'package:date_colors/date_colors.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  // Unit Test: `ColorsOfTheYear`
  test('UT-COTY01-VerifyWhetherAllColorsArePresent', () {
    final ColorsOfTheYear coty = ColorsOfTheYear();
    expect(coty.values.length, 10);
  });
  test('UT-COTY02-VerifyWhetherTheFirstColorMatchesSpecifications', () {
    final ColorsOfTheYear coty = ColorsOfTheYear();
    expect(coty.values[0], 0xFF6c6874);
  });
}
