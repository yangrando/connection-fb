import 'package:flutter_test/flutter_test.dart';

import 'package:connection_fb/main.dart';

void main() {
  testWidgets('Login page renders key widgets', (WidgetTester tester) async {
    await tester.pumpWidget(const MyApp());

    expect(find.text('Welcome back'), findsOneWidget);
    expect(find.text('Login'), findsOneWidget);
    expect(find.text('Login com Google'), findsOneWidget);
  });
}
