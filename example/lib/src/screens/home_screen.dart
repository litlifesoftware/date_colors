import 'package:date_colors/date_colors.dart';
import 'package:flutter/material.dart';
import 'package:example/screens.dart';
import 'package:intl/date_symbol_data_local.dart';
import 'package:intl/intl.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  DateTime get _firstDate => DateTime(1960, 01, 01);
  DateTime get _lastDate => DateTime(2100, 12, 31);
  DateTime get _initialDate => DateTime.now();

  int _index = 0;
  DateTime? _date;
  DateColorScheme? _scheme;
  late DateFormat dateFormat;

  void _setIndex(int value) => setState(() => _index = value);

  void _onTapSelect() async {
    DateTime? picked = await showDatePicker(
      context: context,
      initialDate: _initialDate,
      firstDate: _firstDate,
      lastDate: _lastDate,
    );

    if (picked == null) return;

    setState(() {
      _date = picked;
      _scheme = DateColorScheme(picked);
    });
  }

  void _onTapReset() {
    setState(() {
      _date = null;
      _scheme = null;
    });
  }

  String get _screenTitle {
    switch (_index) {
      case 0:
        return "Months";
      case 1:
        if (_date == null) return "Picker";
        return dateFormat.format(_date!);
      default:
        throw Exception("Unimplemented screen title encountered");
    }
  }

  List<Widget> get screenTabContent => [
        const MonthScreen(),
        PickerScreen(date: _date, scheme: _scheme),
      ];

  FloatingActionButton? get _floatingActionButton => _index == 1
      ? _date != null
          ? FloatingActionButton.extended(
              label: const Text("Reset"),
              icon: const Icon(Icons.close),
              onPressed: _onTapReset,
              backgroundColor: Colors.redAccent,
            )
          : FloatingActionButton.extended(
              label: const Text("Pick"),
              icon: const Icon(Icons.date_range_rounded),
              onPressed: _onTapSelect,
            )
      : null;

  @override
  void initState() {
    initializeDateFormatting();
    super.initState();
  }

  @override
  void didChangeDependencies() {
    dateFormat = DateFormat.yMMMd(Localizations.localeOf(context).languageCode);
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: NavigationBarTheme(
        data: NavigationBarThemeData(
          indicatorColor: Colors.blue.shade100,
          labelTextStyle: MaterialStateProperty.all(
            const TextStyle(
                //  fontWeight: FontWeight.w500,
                ),
          ),
        ),
        child: NavigationBar(
          selectedIndex: _index,
          destinations: const [
            NavigationDestination(
              icon: Icon(Icons.list),
              label: "Months",
            ),
            NavigationDestination(
              icon: Icon(Icons.search),
              label: "Picker",
            ),
          ],
          onDestinationSelected: _setIndex,
        ),
      ),
      appBar: AppBar(
        centerTitle: true,
        title: Text(_screenTitle),
      ),
      floatingActionButton: _floatingActionButton,
      body: screenTabContent[_index],
    );
  }
}
