import 'package:flutter/material.dart';

void main() {
  runApp(const MainTable());
}

class MainTable extends StatelessWidget {
  const MainTable({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // Material App
    return MaterialApp(

        // Scaffold Widget
        home: Scaffold(
      appBar: AppBar(
        // AppBar takes a Text Widget
        // in it's title parameter
        title: const Text('Table NC'),
      ),
      body: const Center(child: Text('Swipe to next screen')),
      Checkbox(value: false, onChanged: null),
    ));
  }
}
