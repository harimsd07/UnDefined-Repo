import 'package:flutter/material.dart';

class ListtileWidget extends StatelessWidget {
  const ListtileWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ListTile Widget', style: TextStyle(color: Colors.white)),
        backgroundColor: Colors.blueGrey,
        centerTitle: true,
      ),
      body: Column(
        children: [
          ListTile(
            leading: Icon(Icons.person),
            title: Text('John Doe'),
            subtitle: Text('Developer'),
            trailing: Icon(Icons.computer_outlined),
            onTap: () => print('Clicked!'),
          ),
          ListTile(
            leading: Icon(Icons.person),
            title: Text('Johnny'),
            subtitle: Text('Designer'),
            trailing: Icon(Icons.design_services_outlined),
            onTap: () => print('Clicked!'),
          ),
        ],
      ),
    );
  }
}
