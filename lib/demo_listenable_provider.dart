import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Counter extends ChangeNotifier {
  int value;

  Counter({required this.value});

  void inCrease() {
    value += 1;
    notifyListeners();
  }

  void deCrease() {
    value -= 1;
    notifyListeners();
  }
}

class DemoListenableProvider extends StatefulWidget {

  @override
  State<DemoListenableProvider> createState() => _DemoListenableProviderState();
}

class _DemoListenableProviderState extends State<DemoListenableProvider> {
  Counter counter = Counter(value: 0);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Demo Listenable Provider"),
      ),
      body: Container(
        constraints: BoxConstraints.expand(),
        child: ListenableProvider.value(
          value: counter,
          child: Chame(
            child: Concai(),
          ),
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
        Consumer<Counter>(
            builder: (context, counter, child){
              return Text("Count: ${counter.value}");
            }
        ),
        child
      ],
    );
  }
}

class Concai extends StatelessWidget {

  late Counter counter;

  @override
  Widget build(BuildContext context) {
    counter = context.watch();
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        ElevatedButton(onPressed: () {
          counter.inCrease();
        }, child: Text("+")),
        ElevatedButton(onPressed: () {
          counter.deCrease();
        }, child: Text("-")),
      ],
    );
  }
}


