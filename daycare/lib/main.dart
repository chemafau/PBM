import 'package:flutter/material.dart';
import 'activity.dart';
import 'login_parents.dart';
import 'login_sitter.dart';
import 'registration.dart';
import 'regist_parents.dart';
import 'parents_input_data.dart';
import 'sitter_input_data.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Wonder Daycare',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MainPage(),
      routes: {
        '/main': (context) => MainPage(),
        '/loginParents': (context) => LoginParentsPage(),
        '/loginSitter': (context) => LoginSitterPage(),
        '/registration': (context) => RegistrationPage(),
        '/registrationParents': (context) => RegistrationParentsPage(),
        '/parentsInputData': (context) => ParentsInputDataPage(),
        '/sitterInputData': (context) => SitterInputDataPage(),
        '/activity': (context) => ActivityPage(),
      },
    );
  }
}

class MainPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.brown[100],
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset('images/daycare.png', height: 200),
            SizedBox(height: 10),
            Text(
              'Welcome to Wonder Daycare!',
              style: TextStyle(fontSize: 20, color: Colors.brown[900], fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 50),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/loginParents');
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.brown[600], // Background color
              ),
              child: Text('Login as Parents',
                style: TextStyle(fontSize: 16, color: Colors.white),
              ),
            ),
            SizedBox(height: 25),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/loginSitter');
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.brown[600], // Background color
              ),
              child: Text('Login as Sitter',
                style: TextStyle(fontSize: 16, color: Colors.white),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
