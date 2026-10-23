import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_application_1/main.dart';
import 'package:flutter_application_1/models/sandwich.dart';
import 'package:flutter_application_1/screens/menu_screen.dart';
import 'package:flutter_application_1/screens/order_screen.dart';

void main() {
  group('OrderItemDisplay widget tests', () {
    testWidgets('displays zero sandwiches with no emoji',
        (WidgetTester tester) async {
      await tester.pumpWidget(
        const MaterialApp(
          home: Scaffold(
            body: OrderItemDisplay(0, 'Footlong Sub'),
          ),
        ),
      );

      expect(find.text('0 Footlong Sub sandwich(es): '), findsOneWidget);
    });

    testWidgets('displays three sandwiches with three emojis',
        (WidgetTester tester) async {
      await tester.pumpWidget(
        const MaterialApp(
          home: Scaffold(
            body: OrderItemDisplay(3, 'Footlong Sub'),
          ),
        ),
      );

      expect(find.text('3 Footlong Sub sandwich(es): 🥪🥪🥪'), findsOneWidget);
    });
  });
}