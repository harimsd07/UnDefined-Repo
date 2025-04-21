import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

import 'package:world_time_app/services/world_time.dart';

class Loading extends StatefulWidget {
  const Loading({super.key});

  @override
  State<Loading> createState() => _LoadingState();
}

class _LoadingState extends State<Loading> {
  void getWorldTime() async {
    WorldTime instance = WorldTime(
      location: 'Berlin',
      flag: '',
      url: 'Asia%2FKolkata',
    );
    await instance.getTime();
    print(instance.time);
    Navigator.pushReplacementNamed(
      context,
      '/home',
      arguments: {
        'location': instance.location,
        'flag': instance.flag,
        'time': instance.time,
        'isDayTime': instance.isDayTime,
      },
    );
  }

  @override
  void initState() {
    super.initState();
    getWorldTime();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 27, 106, 225),

      body: Center(
        child: SpinKitFadingCube(
          color: const Color.fromARGB(255, 187, 206, 233),
          size: 50.0,
        ),
      ),
    );
  }
}
