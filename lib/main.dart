import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(home: IrahCard(), debugShowCheckedModeBanner: false));
}

class IrahCard extends StatefulWidget {
  @override
  State<IrahCard> createState() => _IrahCardState();
}

class _IrahCardState extends State<IrahCard> {
  int candidateLevel = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[900],
      appBar: AppBar(
        title: Text('IRAH Id Card'),
        backgroundColor: Colors.grey[850],
        titleTextStyle: TextStyle(
          color: Colors.white,
          fontSize: 20,
          fontWeight: FontWeight.bold,
        ),
        centerTitle: true,
        elevation: 0.0,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            candidateLevel += 1;
          });
        },
        backgroundColor: Colors.grey[800],
        child: Icon(Icons.add),
      ),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(30.0, 40.0, 30.0, 0.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: CircleAvatar(
                backgroundImage: AssetImage('assets/images_1.jpg'),
                radius: 40.0,
              ),
            ),
            Divider(height: 60.0, color: Colors.grey[800]),
            Text(
              'NAME',
              style: TextStyle(
                color: Colors.grey,
                letterSpacing: 2.0,
                fontSize: 15.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 10.0),
            Text(
              'Sandy',
              style: TextStyle(
                color: Colors.amberAccent[200],
                letterSpacing: 2.0,
                fontSize: 28.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 30.0),
            Text(
              'CANDIDATE LEVEL',
              style: TextStyle(
                color: Colors.grey,
                letterSpacing: 2.0,
                fontSize: 15.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 10.0),
            Text(
              '$candidateLevel',
              style: TextStyle(
                color: Colors.amberAccent[200],
                letterSpacing: 2.0,
                fontSize: 28.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 30.0),
            Row(
              children: [
                Icon(Icons.mail, color: Colors.grey[400]),
                SizedBox(width: 10.0),
                Text(
                  'sandy@mail.com',
                  style: TextStyle(
                    color: Colors.grey[400],
                    fontSize: 18.0,
                    letterSpacing: 1.0,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
