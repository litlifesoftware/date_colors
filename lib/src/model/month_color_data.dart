import 'package:date_colors/date_colors.dart';

/// An abstract `model` containing color values of a month.
///
/// - Extends the [ColorData] model.
abstract class MonthColorData extends ColorData {
  Iterable<int> get calendarDays;
}
