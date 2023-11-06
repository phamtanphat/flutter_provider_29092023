import 'package:flutter/material.dart';

class DemoProviderPage extends StatefulWidget {

  @override
  State<DemoProviderPage> createState() => _DemoProviderPageState();
}

class _DemoProviderPageState extends State<DemoProviderPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Demo provider"),
      ),
      body: Container(
        constraints: BoxConstraints.expand(),
        child: Chame(
          child: Concai(),
        ),
      ),
    );
  }
}

class Chame extends StatelessWidget {
  Widget child;
  Chame({required this.child});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text("Cha me widget"),
        child
      ],
    );
  }
}

class Concai extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Text("Con cai widget");
  }
}

