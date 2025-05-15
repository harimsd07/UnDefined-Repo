import 'package:flutter/material.dart';

class StackWithPositionedWidget extends StatelessWidget {
  const StackWithPositionedWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Text Widget', style: TextStyle(color: Colors.white)),
        backgroundColor: Colors.blueGrey,
        centerTitle: true,
      ),
      body: Center(
        child: Stack(
          children: [
            Container(color: Colors.red, height: 200, width: 200),
            Positioned(
              top: 20,
              left: 30,
              child: Container(color: Colors.blue, height: 50, width: 50),
            ),
          ],
        ),
      ),
    );
  }
}
