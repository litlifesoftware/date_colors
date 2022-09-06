import 'package:date_colors/date_colors.dart';

abstract class MonthColorData extends ColorData {
  Iterable<int> get calendarDays;
}
