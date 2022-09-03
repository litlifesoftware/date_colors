import 'package:date_colors/date_colors.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  // Unit Test: `ColorsOfNovember`
  test('UT-CONov01-VerifiesWhetherAllColorsArePresent', () {
    final ColorsOfNovember coNov = ColorsOfNovember();
    expect(coNov.calendarDays.length, 30);
  });
  test('UT-CONov02-VerifiesWhetherTheFirstColorMatchesSpecifications', () {
    final ColorsOfNovember coNov = ColorsOfNovember();
    expect(coNov.values[1], 0xFFF5911F);
  });
}
