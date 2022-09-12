import 'package:date_colors/date_colors.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  // Unit Test: `ColorsOfJanuary`
  test('UT-COJan01-VerifyWhetherAllColorsArePresent', () {
    final ColorsOfJanuary coJan = ColorsOfJanuary();
    expect(coJan.calendarDays.length, 31);
  });
  test('UT-COJan02-VerifyWhetherTheFirstColorMatchesSpecifications', () {
    final ColorsOfJanuary coJan = ColorsOfJanuary();
    expect(coJan.values[1], 0xFF015696);
  });
}
