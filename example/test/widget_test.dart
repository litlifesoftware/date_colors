// This is a basic Flutter widget test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility that Flutter provides. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.

import 'package:flutter_test/flutter_test.dart';

import 'package:example/main.dart';

void main() {
  testWidgets('EX-1-HomeScreen-Tab-Transition', (WidgetTester tester) async {
    // Build our app and trigger a frame.
    await tester.pumpWidget(const App());

    // Verify that the Months Screen is present.
    expect(find.text('Months'), findsWidgets);
    // Verify that the Picker Screen is present.
    expect(find.text('Picker'), findsOneWidget);
    // Verify that the first January List Tile is present.
    expect(find.text('January'), findsOneWidget);

    // Tap the Picker Navigation Item.
    await tester.tap(find.byTooltip("Picker"));
    // Trigger the frame.
    await tester.pump();

    // Verify that the top bar has changed its title.
    expect(find.text('Picker'), findsWidgets);
  });
}
