import 'package:date_colors/date_colors.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  // Unit Test: `ColorsOfApril`
  test('UT-COApr01-VerifyWhetherAllColorsArePresent', () {
    final ColorsOfApril coApr = ColorsOfApril();
    expect(coApr.calendarDays.length, 30);
  });
  test('UT-COApr02-VerifyWhetherTheFirstColorMatchesSpecifications', () {
    final ColorsOfApril coApr = ColorsOfApril();
    expect(coApr.values[1], 0xFFFFF798);
  });
}
