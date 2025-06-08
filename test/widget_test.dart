import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:first_app/main.dart';

void main() {
  testWidgets('App smoke test', (WidgetTester tester) async {
    // Build our app and trigger a frame.
    await tester.pumpWidget(
      ProviderScope(
        child: MyApp(),
      ),
    );

    // Verify that the app starts with login page
    expect(find.text('AgriWatch'), findsOneWidget);
    expect(find.text('欢迎回来'), findsOneWidget);
  });
}
