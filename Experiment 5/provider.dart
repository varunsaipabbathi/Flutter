import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (_) => CounterModel(),
      child: ProviderApp(),
    ),
  );
}

class CounterModel extends ChangeNotifier {
  int _count = 0;
  int get count => _count;

  void increment() {
    _count++;
    notifyListeners();
  }
}

class ProviderApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text("Provider Example")),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Consumer<CounterModel>(
                builder: (context, counter, child) {
                  return Text("Counter: ${counter.count}", style: TextStyle(fontSize: 24));
                },
              ),
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  Provider.of<CounterModel>(context, listen: false).increment();
                },
                child: Text("Increment"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
