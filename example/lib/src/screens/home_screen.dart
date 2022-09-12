import 'package:flutter/material.dart';
import 'package:example/screens.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int index = 0;

  void setIndex(int value) => setState(() => index = value);

  String get screenTitle {
    switch (index) {
      case 0:
        return "Months";
      case 1:
        return "Picker";
      default:
        throw Exception("Unimplemented screen title encountered");
    }
  }

  List<Widget> screenTabContent = const [
    MonthScreen(),
    PickerScreen(),
  ];

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
          selectedIndex: index,
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
          onDestinationSelected: setIndex,
        ),
      ),
      appBar: AppBar(
        centerTitle: true,
        title: Text(screenTitle),
      ),
      body: screenTabContent[index],
    );
  }
}
