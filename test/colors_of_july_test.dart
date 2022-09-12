import 'package:date_colors/date_colors.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  // Unit Test: `ColorsOfJuly`
  test('UT-COJul01-VerifyWhetherAllColorsArePresent', () {
    final ColorsOfJuly coJul = ColorsOfJuly();
    expect(coJul.calendarDays.length, 31);
  });
  test('UT-COJul02-VerifyWhetherTheFirstColorMatchesSpecifications', () {
    final ColorsOfJuly coJul = ColorsOfJuly();
    expect(coJul.values[1], 0xFFCEE2F5);
  });
}
