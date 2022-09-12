import 'package:date_colors/date_colors.dart';
import 'package:example/src/data/month_data.dart';
import 'package:flutter/material.dart';

class MonthDetailScreen extends StatefulWidget {
  final int index;
  const MonthDetailScreen({
    Key? key,
    required this.index,
  }) : super(key: key);

  @override
  State<MonthDetailScreen> createState() => _MonthDetailScreenState();
}

class _MonthDetailScreenState extends State<MonthDetailScreen> {
  late ColorData colorData;

  void initColorData() {
    int month = widget.index + 1;
    switch (month) {
      case DateTime.january:
        colorData = ColorsOfJanuary();
        break;
      case DateTime.february:
        colorData = ColorsOfFebruary();
        break;
      case DateTime.march:
        colorData = ColorsOfMarch();
        break;
      case DateTime.april:
        colorData = ColorsOfApril();
        break;
      case DateTime.may:
        colorData = ColorsOfMay();
        break;
      case DateTime.june:
        colorData = ColorsOfJune();
        break;
      case DateTime.july:
        colorData = ColorsOfJuly();
        break;
      case DateTime.august:
        colorData = ColorsOfAugust();
        break;
      case DateTime.september:
        colorData = ColorsOfSeptember();
        break;
      case DateTime.october:
        colorData = ColorsOfOctober();
        break;
      case DateTime.november:
        colorData = ColorsOfNovember();
        break;
      case DateTime.december:
        colorData = ColorsOfDecember();
        break;
      default:
        throw Exception("Unimplemented month encountered");
    }
  }

  @override
  void initState() {
    initColorData();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          MonthData.monthLabels[widget.index],
        ),
      ),
      body: ListView.builder(
        itemCount: colorData.values.length,
        itemBuilder: ((context, index) => _MonthDayTile(
              day: index + 1,
              month: widget.index + 1,
            )),
      ),
    );
  }
}

class _MonthDayTile extends StatelessWidget {
  final int day;
  final int month;
  const _MonthDayTile({
    Key? key,
    required this.day,
    required this.month,
  }) : super(key: key);

  DateTime get _date => DateTime(2000, month, day);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      tileColor: DateColorScheme(_date).colorOfTheSeason,
      title: Text(
        day.toString(),
        style: const TextStyle(color: Colors.white),
      ),
    );
  }
}
