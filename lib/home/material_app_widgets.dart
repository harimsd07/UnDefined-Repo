import 'package:flutter/material.dart';
import 'package:widget_app/widgets/materialAppWidget/alertDialog_widget.dart';
import 'package:widget_app/widgets/materialAppWidget/appbar_widget.dart';
import 'package:widget_app/widgets/materialAppWidget/bottomNavigation_widget.dart';
import 'package:widget_app/widgets/materialAppWidget/card_widget.dart';
import 'package:widget_app/widgets/materialAppWidget/floating_action_button_widget.dart';
import 'package:widget_app/widgets/materialAppWidget/listTile_widget.dart';
import 'package:widget_app/widgets/materialAppWidget/scaffold_widget.dart';
import 'package:widget_app/widgets/materialAppWidget/snackBar_widget.dart';

class MaterialAppWidgets extends StatefulWidget {
  const MaterialAppWidgets({super.key});

  @override
  State<MaterialAppWidgets> createState() => _MaterialAppWidgetsState();
}

class _MaterialAppWidgetsState extends State<MaterialAppWidgets> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('MaterialApp Widgets'),
        backgroundColor: Colors.blueGrey,
        centerTitle: true,
      ),
      body: ListView(
        padding: EdgeInsets.only(top: 30),
        children: [
          Column(
            children: [
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => ScaffoldWidget()),
                  );
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.indigo,
                  // foregroundBuilder: Colors.white,
                ),
                child: Text(
                  'Scaffold Widgets',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              SizedBox(height: 35),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => AppbarWidget()),
                  );
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.indigo,
                  // foregroundBuilder: Colors.white,
                ),
                child: Text(
                  'AppBar Widgets',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              SizedBox(height: 35),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => FloatingActionButtonWidget(),
                    ),
                  );
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.indigo,
                  // foregroundBuilder: Colors.white,
                ),
                child: Text(
                  'Floating Action Button Widgets',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              SizedBox(height: 35),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => CardWidget()),
                  );
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.indigo,
                  // foregroundBuilder: Colors.white,
                ),
                child: Text(
                  'Card Widgets',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              SizedBox(height: 35),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => ListtileWidget()),
                  );
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.indigo,
                  // foregroundBuilder: Colors.white,
                ),
                child: Text(
                  'ListTile Widgets',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              SizedBox(height: 35),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => BottomnavigationWidget(),
                    ),
                  );
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.indigo,
                  // foregroundBuilder: Colors.white,
                ),
                child: Text(
                  'Bottom Navigation Widgets',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              SizedBox(height: 35),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => SnackbarWidget()),
                  );
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.indigo,
                  // foregroundBuilder: Colors.white,
                ),
                child: Text(
                  'Snackbar Widgets',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              SizedBox(height: 35),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => AlertdialogWidget(),
                    ),
                  );
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.indigo,
                  // foregroundBuilder: Colors.white,
                ),
                child: Text(
                  'Alert Dialog Widgets',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
