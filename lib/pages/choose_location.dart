import 'package:flutter/material.dart';

class ChooseLocation extends StatefulWidget {
  const ChooseLocation({super.key});

  @override
  State<ChooseLocation> createState() => _ChooseLocationState();
}

class _ChooseLocationState extends State<ChooseLocation> {
  void getData() async {
    String username = await Future.delayed(Duration(seconds: 3), () {
      return 'irah';
    });

    String bio = await Future.delayed(Duration(seconds: 3), () {
      return 'noob techie and enthu';
    });

    print('$username - $bio');
  }

  @override
  void initState() {
    super.initState();
    getData();

    print('hey there');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 125, 169, 236),
        elevation: 0,
        centerTitle: true,
        title: Text('Choose a Location'),
      ),
      body: ElevatedButton(
        onPressed: () {
          setState(() {});
        },
        child: null,
      ),
    );
  }
}
