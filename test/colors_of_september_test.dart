import 'package:date_colors/date_colors.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  // Unit Test: `ColorsOfSeptember`
  test('UT-COSep01-VerifyWhetherAllColorsArePresent', () {
    final ColorsOfSeptember coSep = ColorsOfSeptember();
    expect(coSep.calendarDays.length, 30);
  });
  test('UT-COSep02-VerifyWhetherTheFirstColorMatchesSpecifications', () {
    final ColorsOfSeptember coSep = ColorsOfSeptember();
    expect(coSep.values[1], 0xFFD0D2D4);
  });
}
