import 'package:flutter/material.dart';
import 'package:my_travel_mate/login.dart';

class AccountPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Account'),
        backgroundColor: Theme.of(context).primaryColor,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.all(20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // User Icon
                CircleAvatar(
                  radius: 60, // Adjust the size as needed
                  backgroundImage: AssetImage('assets/user_icon.png'), // Replace with your image
                ),
                SizedBox(height: 20), // Add spacing between the user icon and button
                // "View Profile" Link
                InkWell(
                  onTap: () {
                    // Handle the "View Profile" link tap
                  },
                  child: Row(
                    children: [
                      SizedBox(width: 10), // Add spacing between the icon and text
                      Text('View Profile', style: TextStyle(fontSize: 18)),
                      Icon(Icons.arrow_right)
                    ],
                  ),
                ),
                // "Login" Button
                TextButton(
                  onPressed: () {
                    // Navigate to the login screen (login.dart)
                    Navigator.push(context, MaterialPageRoute(builder: (context) => LoginScreen()));
                  },
                  child: Text('Login'),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
