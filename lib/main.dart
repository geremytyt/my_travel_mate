import 'package:flutter/material.dart';
import 'login.dart';
import 'package:my_travel_mate/POI/viewPoiDetails.dart';
import 'package:my_travel_mate/User/tripPage.dart';
import 'package:my_travel_mate/User/accountPage.dart';

void main() {
  // Define your custom color
  Color customColor = Color(0xFF74DED7);

  runApp(MyApp(customColor));
}

class MyApp extends StatelessWidget {

  final Color customColor;

  MyApp(this.customColor);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'My Travel Mate',
      theme: ThemeData(
        primaryColor: customColor,
      ),
      home: MyHomePage(),
      routes: {
        '/login': (context) => LoginScreen(),
        // You can keep other routes here if needed
      },
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _currentIndex = 0;

  final List<Widget> _pages = [
    HomeScreen(),
    TripPage(),
    AccountPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: IndexedStack(
        index: _currentIndex,
        children: _pages,
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.airplanemode_active),
            label: 'Trips',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.account_circle),
            label: 'Account',
          ),
        ],
      ),
      appBar: _currentIndex == 0
          ? AppBar(
        title: Text('MyTravelMate'),
        backgroundColor: Theme.of(context).primaryColor,
      )
          : null,
    );
  }
}

class HomeScreen extends StatelessWidget {

  final List<Map<String, dynamic>> destinations = [
    // Destination data...
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: destinations.length,
      itemBuilder: (ctx, index) {
        final destination = destinations[index];
        return Card(
          // Destination card...
        );
      },
    );
  }
}


