import 'package:flutter_config/flutter_config.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  FlutterConfig.loadValueForTesting(
    <String, dynamic>{'BASE_URL': 'https://www.google.com'},
  );

  test('test variable should be available on test', () {
    final String baseUrl = FlutterConfig.get('BASE_URL') as String;

    expect(baseUrl, matches('https://www.google.com'));
  });
}
