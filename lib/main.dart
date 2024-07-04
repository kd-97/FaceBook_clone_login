import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: LoginPage(),
    );
  }
}

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 24, 26, 165),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      color: const Color.fromARGB(255, 255, 254, 254),
                      blurRadius: 50, // Adjust the shadow size
                      offset: Offset(0, 0), // Adjust the shadow position
                    ),
                  ],
                ),
                child: Text(
                  'Facebook',
                  style: TextStyle(
                      color: Color.fromARGB(255, 19, 60, 180),
                      fontSize: 60,
                      fontWeight: FontWeight.bold),
                ),
              ),
              SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.all(8.0),
              ),
              TextFormField(
                decoration: InputDecoration(
                  hintText: 'Username or Phone Number',
                  fillColor: Colors.white,
                  filled: true,
                ),
                // Add validation logic here
              ),
              SizedBox(height: 10),
              TextFormField(
                obscureText: true,
                decoration: InputDecoration(
                  hintText: 'Password',
                  fillColor: Colors.white,
                  filled: true,
                  suffixIcon: Icon(Icons.visibility),
                ),
                // Add validation logic here
              ),
              SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton.icon(
                    onPressed: () {
                      // Login with Google logic
                    },
                    icon: Icon(Icons.login),
                    label: Text('Login with Google'),
                  ),
                  SizedBox(width: 10), // Add spacing between buttons
                  ElevatedButton(
                    onPressed: () {
                      // Login with phone number logic
                    },
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Icon(Icons.phone, color: Colors.white),
                        SizedBox(width: 8),
                        Text('Login with Phone Number'),
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20),
              TextButton(
                onPressed: () {
                  // Create new account logic
                },
                child: Text(
                  'Create New Account',
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
