import 'package:date_colors/date_colors.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  // Unit Test: `ColorsOfMay`
  test('UT-COMay01-VerifiesWhetherAllColorsArePresent', () {
    final ColorsOfMay coMay = ColorsOfMay();
    expect(coMay.calendarDays.length, 31);
  });
  test('UT-COMay02-VerifiesWhetherTheFirstColorMatchesSpecifications', () {
    final ColorsOfMay coMay = ColorsOfMay();
    expect(coMay.values[1], 0xFFDDDAED);
  });
}
