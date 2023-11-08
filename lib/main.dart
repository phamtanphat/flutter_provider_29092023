import 'package:flutter/material.dart';
import 'package:flutter_provider_29092023/demo_listenable_provider.dart';
import 'package:flutter_provider_29092023/demo_provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: DemoListenableProvider()
    );
  }
}
