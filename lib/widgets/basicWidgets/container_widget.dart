import 'package:flutter/material.dart';

class ContainerWidget extends StatelessWidget {
  const ContainerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Container Widget', style: TextStyle(color: Colors.white)),
        backgroundColor: Colors.blueGrey,
        centerTitle: true,
      ),
      body: ListView(
        scrollDirection: Axis.vertical,
        children: [
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  padding: EdgeInsets.all(50), // Inner spacing
                  margin: EdgeInsets.all(10), // Outer spacing
                  color: Colors.blue, // Background color

                  child: Container(
                    padding: EdgeInsets.all(100), // Inner spacing
                    margin: EdgeInsets.all(10), // Outer spacing
                    color: Colors.green, // Background color
                    child: Text('Flutter Box'), // Child widget
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(100), // Inner spacing
                  margin: EdgeInsets.all(100), // Outer spacing
                  color: Colors.green, // Background color
                  child: Text('Flutter Box'), // Child widget
                ),
                Container(
                  padding: EdgeInsets.all(100), // Inner spacing
                  margin: EdgeInsets.all(100), // Outer spacing
                  color: Colors.green, // Background color
                  child: Text('Flutter Box'), // Child widget
                ),
                Container(
                  padding: EdgeInsets.all(100), // Inner spacing
                  margin: EdgeInsets.all(100), // Outer spacing
                  color: Colors.green, // Background color
                  child: Text('Flutter Box'), // Child widget
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
