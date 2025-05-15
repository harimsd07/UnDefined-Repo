import 'package:flutter/material.dart';

class AlertdialogWidget extends StatelessWidget {
  const AlertdialogWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Alert Dialog Widget',
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.blueGrey,
        centerTitle: true,
      ),
      body: // Inside a button's onPressed or any event handler:
          Center(
        child: ElevatedButton(
          onPressed: () {
            showDialog(
              context: context, // Required: Current BuildContext
              builder: (BuildContext context) {
                return AlertDialog(
                  title: Text('Delete Item?'),
                  content: Text('Are you sure you want to delete this item?'),
                  actions: [
                    TextButton(
                      onPressed: () {
                        Navigator.pop(context); // Close the dialog
                      },
                      child: Text('Cancel'),
                    ),
                    TextButton(
                      onPressed: () {
                        // Your custom function
                        Navigator.pop(context); // Close after action
                      },
                      child: Text('Delete'),
                    ),
                  ],
                );
              },
            );
          },
          child: Text('Show Dialog'),
        ),
      ),
    );
  }
}
