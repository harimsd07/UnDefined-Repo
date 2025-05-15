import 'package:flutter/material.dart';

class ExpandedWidget extends StatelessWidget {
  const ExpandedWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Expanded Widget', style: TextStyle(color: Colors.white)),
        backgroundColor: Colors.blueGrey,
        centerTitle: true,
      ),
      body: Column(
        children: [
          Expanded(child: Container(color: Colors.red, height: 50)),
          SizedBox(height: 25),
          Container(color: Colors.blue, width: 50, height: 50),
          Container(
            padding: EdgeInsets.all(100), // Inner spacing
            margin: EdgeInsets.all(100), // Outer spacing
            color: Colors.green, // Background color
            child: Text('Flutter Box'), // Child widget
          ),
        ],
      ),
    );
  }
}
