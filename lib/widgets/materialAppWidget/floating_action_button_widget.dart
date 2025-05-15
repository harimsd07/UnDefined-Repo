import 'package:flutter/material.dart';

class FloatingActionButtonWidget extends StatefulWidget {
  const FloatingActionButtonWidget({super.key});

  @override
  State<FloatingActionButtonWidget> createState() =>
      _FloatingActionButtonWidgetState();
}

class _FloatingActionButtonWidgetState
    extends State<FloatingActionButtonWidget> {
  String _displayText = 'Press the + button below!';

  void _updateText() {
    setState(() {
      _displayText = 'Button was clicked! ';
      // ${DateTime.now()}
    });
    print('FAB Clicked!'); // This prints to console
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Floating action button Widget',
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.blueGrey,
        centerTitle: true,
      ),
      body: Center(
        child: Text(_displayText, style: const TextStyle(fontSize: 20)),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _updateText,
        child: Icon(Icons.add),
        backgroundColor: Colors.blue,
      ),
    );
  }
}
