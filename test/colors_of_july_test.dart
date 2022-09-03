import 'package:date_colors/date_colors.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  // Unit Test: `ColorsOfJuly`
  test('UT-COJul01-VerifiesWhetherAllColorsArePresent', () {
    final ColorsOfJuly coJul = ColorsOfJuly();
    expect(coJul.calendarDays.length, 31);
  });
  test('UT-COJul02-VerifiesWhetherTheFirstColorMatchesSpecifications', () {
    final ColorsOfJuly coJul = ColorsOfJuly();
    expect(coJul.values[1], 0xFFCEE2F5);
  });
}
