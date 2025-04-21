import 'dart:convert';

import 'package:http/http.dart';
import 'package:intl/intl.dart';

class WorldTime {
  String location;
  String time = '';
  String flag;
  String url;
  bool isDayTime = false;

  WorldTime({required this.location, required this.flag, required this.url});

  Future<void> getTime() async {
    Response response = await get(
      Uri.parse('https://www.timeapi.io/api/time/current/zone?timeZone=$url'),
    );
    // print(response.body);
    Map data = jsonDecode(response.body);
    // print(data);

    String currentTimeString = data['time']; // Get the time as a string

    // Assuming the 'time' format from the API is something like 'HH:mm:ss.SSS'
    // You might need to adjust the format string below based on the actual API response.
    DateTime parsedTime = DateTime.parse('2023-01-01 $currentTimeString');

    isDayTime = parsedTime.hour > 6 && parsedTime.hour < 20 ? true : false;
    time = DateFormat.jm().format(parsedTime); // Format to hh:mm a
    // print(time);
  }
}
