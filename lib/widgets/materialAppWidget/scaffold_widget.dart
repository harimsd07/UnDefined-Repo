import 'package:flutter/material.dart';

class ScaffoldWidget extends StatelessWidget {
  const ScaffoldWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Scaffold widget'),
        backgroundColor: Colors.blueGrey,
      ),
      body: Center(child: Text('Welcome!')),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.pop(context);
        },
        child: Icon(Icons.arrow_back),
      ),
      drawer: Drawer(child: Center(child: Text('Menu'))),
    );
  }
}
