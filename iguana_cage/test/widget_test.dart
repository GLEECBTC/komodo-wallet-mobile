// This is a basic Flutter widget test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility in the flutter_test package. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.

import 'package:flutter_test/flutter_test.dart';

import 'package:iguana_cage/main.dart';

void main() {
  testWidgets('Komodo Wallet Migration smoke test', (
    WidgetTester tester,
  ) async {
    // Build our app and trigger a frame.
    await tester.pumpWidget(const IguanaCageApp());

    // Verify that the app starts with the wallet list screen
    expect(find.text('Komodo Wallet Migration'), findsOneWidget);
  });
}
