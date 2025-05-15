import 'package:flutter/material.dart';

class RowColumnWidget extends StatelessWidget {
  const RowColumnWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Row Column Widget', style: TextStyle(color: Colors.white)),
        backgroundColor: Colors.blueGrey,
        centerTitle: true,
      ),
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('Apple'),
                SizedBox(width: 20),
                Text('Banana'),
                SizedBox(width: 20),
                Text('Orange'),
              ],
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('Apple'),
                SizedBox(width: 20),
                Text('Banana'),
                SizedBox(width: 20),
                Text('Orange'),
              ],
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('Apple'),
                SizedBox(width: 20),
                Text('Banana'),
                SizedBox(width: 20),
                Text('Orange'),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
