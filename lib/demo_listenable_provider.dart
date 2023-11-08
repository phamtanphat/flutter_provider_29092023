import 'package:flutter/material.dart';

class Counter extends ChangeNotifier {
  int value;

  Counter({required this.value});

  void inCrease() {
    value += 1;
  }

  void deCrease() {
    value -= 1;
  }
}

class DemoListenableProvider extends StatefulWidget {

  @override
  State<DemoListenableProvider> createState() => _DemoListenableProviderState();
}

class _DemoListenableProviderState extends State<DemoListenableProvider> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Demo Listenable Provider"),
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
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text("Count: 0"),
        child
      ],
    );
  }
}

class Concai extends StatelessWidget {
  const Concai({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        ElevatedButton(onPressed: () { }, child: Text("+")),
        ElevatedButton(onPressed: () { }, child: Text("-")),
      ],
    );
  }
}


