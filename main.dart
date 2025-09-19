import 'package:flutter/material.dart';

// Importing all experiments
import 'experiment1/hello.dart';
import 'experiment2/layout_demo.dart';
import 'experiment2/widgets_demo.dart';
import 'experiment3/mediaquery.dart';
import 'experiment3/responsive.dart';
import 'experiment4/navigation.dart';
import 'experiment4/named_routes.dart';
import 'experiment5/stateless.dart';
import 'experiment5/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Experiments',
      theme: ThemeData(primarySwatch: Colors.blue),

      // 👇 Change this line to switch between experiments
      home: HelloWorld(),   // Example: Experiment 1
      // home: LayoutDemo(),  // Example: Experiment 2
      // home: WidgetsDemo(),
      // home: MediaQueryDemo(),
      // home: ResponsiveUI(),
      // home: NavigationDemo(),
      // home: NamedRoutesDemo(),
      // home: StatelessDemo(),
      // home: ProviderDemo(),
    );
  }
}
