import 'package:flutter/material.dart';

class DetailScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("EATING WELL"),
      ),
      body: Center(
        child: Text('This is the detail screen for'),
      ),
    );
  }
}
