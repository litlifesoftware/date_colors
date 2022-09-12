import 'package:example/src/data/month_data.dart';
import 'package:example/src/screens/month_detail_screen.dart';
import 'package:flutter/material.dart';

class MonthScreen extends StatefulWidget {
  const MonthScreen({Key? key}) : super(key: key);

  @override
  State<MonthScreen> createState() => _MonthScreenState();
}

class _MonthScreenState extends State<MonthScreen> {
  void onTapMonthTile(int month) {
    Navigator.of(context).push(
      (MaterialPageRoute(
        builder: (context) => MonthDetailScreen(
          index: month,
        ),
      )),
    );
  }

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: MonthData.monthLabels.length,
      itemBuilder: ((context, index) => ListTile(
            onTap: () => onTapMonthTile(index),
            title: Text(
              MonthData.monthLabels[index],
            ),
          )),
    );
  }
}
