import 'package:date_colors/date_colors.dart';
import 'package:example/data.dart';
import 'package:example/extensions.dart';
import 'package:flutter/material.dart';

import 'color_detail_screen.dart';

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

class _MonthDayTile extends StatefulWidget {
  final int day;
  final int month;
  const _MonthDayTile({
    Key? key,
    required this.day,
    required this.month,
  }) : super(key: key);

  @override
  State<_MonthDayTile> createState() => _MonthDayTileState();
}

class _MonthDayTileState extends State<_MonthDayTile> {
  late Color _colorOfTheSeason;

  void onTap(Color color) {
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: ((context) => ColorDetailScreen(color: color)),
      ),
    );
  }

  @override
  void initState() {
    _colorOfTheSeason = DateColorScheme(
      DateTime(2000, widget.month, widget.day),
    ).colorOfTheSeason;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return ListTile(
      tileColor: _colorOfTheSeason,
      onTap: () => onTap(_colorOfTheSeason),
      title: Text(
        widget.day.toString(),
        style: const TextStyle(
          color: Colors.white,
          fontWeight: FontWeight.bold,
        ),
      ),
      subtitle: Text(
        _colorOfTheSeason.hexCode,
        style: const TextStyle(
          color: Colors.white,
        ),
      ),
    );
  }
}
