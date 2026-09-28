import 'package:astroscope/models/planets.dart';
import 'package:astroscope/widgets/planet_facts.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  testWidgets('planet facts update with the selected planet', (tester) async {
    await tester.pumpWidget(
      MaterialApp(
        home: Scaffold(
          body: SingleChildScrollView(child: PlanetFacts(planet: planets[2])),
        ),
      ),
    );

    expect(find.text('Earth'), findsOneWidget);
    expect(find.text('5.972'), findsOneWidget);
    expect(find.text('149.6'), findsOneWidget);

    await tester.pumpWidget(
      MaterialApp(
        home: Scaffold(
          body: SingleChildScrollView(child: PlanetFacts(planet: planets[3])),
        ),
      ),
    );

    expect(find.text('Mars'), findsOneWidget);
    expect(find.text('0.642'), findsOneWidget);
    expect(find.text('227.9'), findsOneWidget);
  });
}
