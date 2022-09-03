import 'package:date_colors/date_colors.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  // Unit Test: `ColorsOfJune`
  test('UT-COJun01-VerifiesWhetherAllColorsArePresent', () {
    final ColorsOfJune coJun = ColorsOfJune();
    expect(coJun.calendarDays.length, 30);
  });
  test('UT-COJun02-VerifiesWhetherTheFirstColorMatchesSpecifications', () {
    final ColorsOfJune coJun = ColorsOfJune();
    expect(coJun.values[1], 0xFF03B2D0);
  });
}
