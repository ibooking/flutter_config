import 'package:flutter/material.dart';
import 'package:flutter_config/flutter_config.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await FlutterConfig.loadEnvVariables();

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final List<Widget> allValues = <Widget>[];

    FlutterConfig.variables.forEach((String k, dynamic v) {
      allValues.add(Text('$k: $v'));
    });

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Plugin example app'),
        ),
        body: Center(
          child: Column(
            children: <Widget>[
              ...allValues,
              const SizedBox(
                height: 20,
              ),
              Text('Values of fabric Id: ${FlutterConfig.get('FABRIC_ID')}')
            ],
          ),
        ),
      ),
    );
  }
}
