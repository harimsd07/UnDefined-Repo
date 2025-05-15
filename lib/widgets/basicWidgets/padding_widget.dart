import 'package:flutter/material.dart';

class PaddingWidget extends StatelessWidget {
  const PaddingWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Padding Widget', style: TextStyle(color: Colors.white)),
        backgroundColor: Colors.blueGrey,
        centerTitle: true,
      ),
      body: Padding(
        padding: EdgeInsets.all(50), // Adds 20px space on all sides
        child: Column(
          children: [
            Text('Padded Text'),
            Container(
              color: Colors.lightGreenAccent,
              margin: EdgeInsets.all(10),
              padding: EdgeInsets.all(50),
              child: Text('Padding Widget'),
            ),
          ],
        ),
      ),
    );
  }
}
