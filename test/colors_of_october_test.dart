import 'package:date_colors/date_colors.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  // Unit Test: `ColorsOfOctober`
  test('UT-COOct01-VerifyWhetherAllColorsArePresent', () {
    final ColorsOfOctober coOct = ColorsOfOctober();
    expect(coOct.calendarDays.length, 31);
  });
  test('UT-COOct02-VerifyWhetherTheFirstColorMatchesSpecifications', () {
    final ColorsOfOctober coOct = ColorsOfOctober();
    expect(coOct.values[1], 0xFFC04F33);
  });
}
