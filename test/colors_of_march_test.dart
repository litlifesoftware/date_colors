import 'package:date_colors/date_colors.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  // Unit Test: `ColorsOfMarch`
  test('UT-COMar01-VerifiesWhetherAllColorsArePresent', () {
    final ColorsOfMarch coMar = ColorsOfMarch();
    expect(coMar.calendarDays.length, 31);
  });
  test('UT-COMar02-VerifiesWhetherTheFirstColorMatchesSpecifications', () {
    final ColorsOfMarch coMar = ColorsOfMarch();
    expect(coMar.values[1], 0xFFC4B600);
  });
}
