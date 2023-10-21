// Example login screen UI
import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Login'),
        backgroundColor: Theme.of(context).primaryColor,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            // Logo (Image widget)
            Padding(
              padding: const EdgeInsets.only(top: 20),
              child: Image.asset(
                'assets/logo.png', // Replace with the path to your logo image
                width: 150, // Adjust the width as needed
                height: 150, // Adjust the height as needed
              ),
            ),
            TextField(
              decoration: InputDecoration(labelText: 'Email'),
            ),
            TextField(
              decoration: InputDecoration(labelText: 'Password'),
              obscureText: true,
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () async {
                Navigator.of(context).pushReplacementNamed('/home');
              },
              child: Text('Login'),
            ),
            TextButton(
              onPressed: () {
                // Navigate to the password reset screen
              },
              child: Text('Forgot Password?'),
            ),
          ],
        ),
      ),
    );
  }
}
