import 'package:date_colors/date_colors.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  // Unit Test: `ColorsOfDecember`
  test('UT-CODec01-VerifiesWhetherAllColorsArePresent', () {
    final ColorsOfDecember coDec = ColorsOfDecember();
    expect(coDec.calendarDays.length, 31);
  });
  test('UT-CODec02-VerifiesWhetherTheFirstColorMatchesSpecifications', () {
    final ColorsOfDecember coDec = ColorsOfDecember();
    expect(coDec.values[1], 0xFF004812);
  });
}
