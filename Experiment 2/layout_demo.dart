import 'package.flutter/material.dart';

void main() {
  runApp(const LayoutDemoApp());
}

class LayoutDemoApp extends StatelessWidget {
  const LayoutDemoApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Modern Layouts Example"),
          backgroundColor: Colors.blueGrey,
        ),
        backgroundColor: Colors.grey[200],
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              children: const [
                RowExample(),
                SizedBox(height: 16),
                ColumnExample(),
                SizedBox(height: 16),
                StackExample(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

/// A widget demonstrating the Row layout.
class RowExample extends StatelessWidget {
  const RowExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 2,
      child: Column(
        children: [
          const ListTile(
            title: Text('Row Example'),
            subtitle: Text('Arranges widgets horizontally.'),
          ),
          Container(
            padding: const EdgeInsets.all(16),
            color: Colors.amber[200],
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: const [
                Icon(Icons.home, size: 40, color: Colors.red),
                Icon(Icons.star, size: 40, color: Colors.green),
                Icon(Icons.person, size: 40, color: Colors.blue),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

/// A widget demonstrating the Column layout.
class ColumnExample extends StatelessWidget {
  const ColumnExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 2,
      child: Column(
        children: [
          const ListTile(
            title: Text('Column Example'),
            subtitle: Text('Arranges widgets vertically.'),
          ),
          Container(
            padding: const EdgeInsets.all(16),
            color: Colors.teal[100],
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                Text("First Item", style: TextStyle(fontSize: 20)),
                SizedBox(height: 8),
                Text("Second Item", style: TextStyle(fontSize: 20)),
                SizedBox(height: 8),
                Text("Third Item", style: TextStyle(fontSize: 20)),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

/// A widget demonstrating the Stack layout.
class StackExample extends StatelessWidget {
  const StackExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 2,
      // Clip the corners of the Stack to match the Card's rounded corners
      clipBehavior: Clip.antiAlias,
      child: Column(
        children: [
          const ListTile(
            title: Text('Stack Example'),
            subtitle: Text('Overlaps widgets on top of each other.'),
          ),
          Container(
            height: 200,
            color: Colors.grey[300],
            child: Stack(
              alignment: Alignment.center,
              children: [
                Container(color: Colors.blue),
                Positioned(
                  left: 20,
                  top: 20,
                  child: Container(
                    height: 100,
                    width: 100,
                    color: Colors.red,
                  ),
                ),
                const Text(
                  "Stacked!",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}