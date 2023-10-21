import 'package:flutter/material.dart';

class TripPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Replace this with your list of registered trips
    List<Trip> trips = getRegisteredTrips();

    return Scaffold(
      appBar: AppBar(
        title: Text('Trips'),
        backgroundColor: Theme.of(context).primaryColor,
      ),
      body: Column(
        children: [
          ElevatedButton(
            onPressed: () {
              // Handle the "Add Trip" button press
            },
            child: Text('Add Trip'),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: trips.length,
              itemBuilder: (ctx, index) {
                final trip = trips[index];
                return Card(
                  margin: EdgeInsets.all(10),
                  child: ListTile(
                    leading: CircleAvatar(
                      // Display trip-related icon or image
                      radius: 25,
                      backgroundImage: AssetImage('assets/trip_icon.png'),
                    ),
                    title: Text(trip.title),
                    subtitle: Text(trip.date),
                    // You can add more information here
                    onTap: () {
                      // Handle tapping on a trip to view details
                    },
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}

class Trip {
  final String title;
  final String date;

  Trip({required this.title, required this.date});
}

// Replace this with your function to fetch registered trips
List<Trip> getRegisteredTrips() {
  return [
    Trip(title: 'Trip 1', date: 'Date 1'),
    Trip(title: 'Trip 2', date: 'Date 2'),
    // Add more trips as needed
  ];
}
