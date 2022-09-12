import 'package:date_colors/date_colors.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  // Unit Test: `ColorsOfAugust`
  test('UT-COAug01-VerifyWhetherAllColorsArePresent', () {
    final ColorsOfAugust coAug = ColorsOfAugust();
    expect(coAug.calendarDays.length, 31);
  });
  test('UT-COAug02-VerifyWhetherTheFirstColorMatchesSpecifications', () {
    final ColorsOfAugust coAug = ColorsOfAugust();
    expect(coAug.values[1], 0xFF9C3921);
  });
}
