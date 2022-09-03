import 'package:date_colors/date_colors.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  // Unit Test: `ColorsOfFebruary`
  test('UT-COFeb01-VerifiesWhetherAllColorsArePresent', () {
    final ColorsOfFebruary coFeb = ColorsOfFebruary();
    expect(coFeb.calendarDays.length, 29);
  });
  test('UT-COFeb02-VerifiesWhetherTheFirstColorMatchesSpecifications', () {
    final ColorsOfFebruary coFeb = ColorsOfFebruary();
    expect(coFeb.values[1], 0xFFC60650);
  });
}
