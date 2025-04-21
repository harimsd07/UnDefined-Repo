import 'package:flutter/material.dart';
import 'package:world_time_app/services/world_time.dart';

class ChooseLocation extends StatefulWidget {
  const ChooseLocation({super.key});

  @override
  State<ChooseLocation> createState() => _ChooseLocationState();
}

class _ChooseLocationState extends State<ChooseLocation> {
  List<WorldTime> locations = [
    WorldTime(url: 'Europe%2FLondon', location: 'London', flag: 'uk.png'),
    WorldTime(url: 'Europe%2FBerlin', location: 'Athens', flag: 'greece.png'),
    WorldTime(url: 'Africa%2FCairo', location: 'Cairo', flag: 'egypt.png'),
    WorldTime(url: 'Africa%2FNairobi', location: 'Nairobi', flag: 'kenya.png'),
    WorldTime(url: 'America%2FChicago', location: 'Chicago', flag: 'usa.png'),
    WorldTime(url: 'America%2FNew_York', location: 'New York', flag: 'usa.png'),
    WorldTime(url: 'Asia%2FSeoul', location: 'Seoul', flag: 'south_korea.png'),
    WorldTime(
      url: 'Asia%2FJakarta',
      location: 'Jakarta',
      flag: 'indonesia.png',
    ),
  ];

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
      body: ListView.builder(
        itemCount: locations.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.symmetric(vertical: 1.0, horizontal: 4.0),
            child: Card(
              child: ListTile(
                onTap: () {
                  print(locations[index].location);
                },
                title: Text(locations[index].location),
                leading: CircleAvatar(
                  backgroundImage: AssetImage(
                    'assets/${locations[index].flag}',
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
