import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:separated_row/separated_row.dart';

void main() {
  testWidgets('SeparatedRow renders correctly with empty children list', (WidgetTester tester) async {
    await tester.pumpWidget(
      MaterialApp(
        home: Scaffold(
          body: SeparatedRow(
            separatorBuilder: (BuildContext context, int index) {
              return Container(
                width: 5,
                color: Colors.grey,
              );
            },
            children: <Widget>[],
          ),
        ),
      ),
    );

    expect(find.byType(Text), findsNothing);
    expect(find.byType(Container), findsNothing);
  });

  testWidgets('SeparatedRow renders children with inner separators', (WidgetTester tester) async {
    await tester.pumpWidget(
      MaterialApp(
        home: Scaffold(
          body: SeparatedRow(
            separatorBuilder: (BuildContext context, int index) {
              return Container(
                width: 5,
                color: Colors.grey,
              );
            },
            children: <Widget>[
              Text('Item 1'),
              Text('Item 2'),
              Text('Item 3'),
            ],
          ),
        ),
      ),
    );

    // Expect to find three Text widgets and two Container widgets for separators
    expect(find.byType(Text), findsNWidgets(3));
    expect(find.byType(Container), findsNWidgets(2));
  });

  testWidgets('SeparatedRow renders children with inner and outer separators', (WidgetTester tester) async {
    await tester.pumpWidget(
      MaterialApp(
        home: Scaffold(
          body: SeparatedRow(
            separatorBuilder: (BuildContext context, int index) {
              return Container(
                width: 5,
                color: Colors.grey,
              );
            },
            children: <Widget>[
              Text('Item 1'),
              Text('Item 2'),
              Text('Item 3'),
            ],
            includeOuterSeparators: true,
          ),
        ),
      ),
    );

    // Expect to find three Text widgets and two Container widgets for separators
    expect(find.byType(Text), findsNWidgets(3));
    expect(find.byType(Container), findsNWidgets(4));
  });
}
