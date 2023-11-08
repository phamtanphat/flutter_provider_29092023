import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
class Counter{
  ValueNotifier<int> count = ValueNotifier(0);
}

class DemoValueListenableWidget extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    print("Parent widget");
    return Scaffold(
      appBar: AppBar(
        title: Text("Demo Valuelistenable Provider"),
      ),
      body: Provider(
          create: (context) => Counter(),
          child: Consumer<Counter>(
            builder: (context, counter, child) {
              return ValueListenableBuilder(
                  valueListenable: counter.count,
                  builder: (context, number, child){
                    return Column(
                        children: [
                          ElevatedButton(onPressed: () {
                            counter.count.value += 1;
                          }, child: Text("Increase")),
                          Text(number.toString())
                        ]
                    );
                  }
              );
            },
          )
      ),
    );
  }
}