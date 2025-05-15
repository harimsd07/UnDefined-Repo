import 'package:flutter/material.dart';
import 'package:widget_app/home/homepage.dart';
import 'package:widget_app/widgets/basicWidgets/center_widget.dart';
import 'package:widget_app/widgets/basicWidgets/container_widget.dart';
import 'package:widget_app/widgets/basicWidgets/expanded_widget.dart';
import 'package:widget_app/widgets/basicWidgets/padding_widget.dart';
import 'package:widget_app/widgets/basicWidgets/row_column.dart';
import 'package:widget_app/widgets/materialAppWidget/alertDialog_widget.dart';
import 'package:widget_app/widgets/materialAppWidget/appbar_widget.dart';
import 'package:widget_app/widgets/materialAppWidget/bottomNavigation_widget.dart';
import 'package:widget_app/widgets/materialAppWidget/card_widget.dart';
import 'package:widget_app/widgets/materialAppWidget/floating_action_button_widget.dart';
import 'package:widget_app/widgets/materialAppWidget/listTile_widget.dart';
import 'package:widget_app/widgets/materialAppWidget/scaffold_widget.dart';
import 'package:widget_app/widgets/basicWidgets/sizedbox_widget.dart';
import 'package:widget_app/widgets/basicWidgets/stack_with_positioned_widget.dart';
import 'package:widget_app/widgets/basicWidgets/text_widget.dart';
import 'package:widget_app/widgets/materialAppWidget/snackBar_widget.dart';

//  this is the material app widget example
// void main() {
//   runApp(
//     MaterialApp(
//       title: 'My App',
//       debugShowCheckedModeBanner: false,
//       theme: ThemeData(primarySwatch: Colors.blue),
//       home: Scaffold(body: Center(child: Text('Hello!'))),
//     ),
//   );
// }

void main() {
  runApp(MaterialApp(home: MyApp(), debugShowCheckedModeBanner: false));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Homepage();
  }
}
