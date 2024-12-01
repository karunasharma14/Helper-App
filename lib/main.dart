import 'package:flutter/material.dart';
import 'home.dart';
import 'profile.dart';
import 'about.dart';
import 'payment.dart';
import 'booking.dart';

void main() {
  runApp(HelperApp());
}

class HelperApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Helper Application',
      theme: ThemeData(
        primarySwatch: Colors.blue, // Primary color for the app
        scaffoldBackgroundColor: Colors.grey[200], // Background color
        textTheme: TextTheme(
          headlineSmall: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
          bodySmall: TextStyle(color: Colors.grey[800]),
        ),
        appBarTheme: AppBarTheme(
          color: Colors.blue, // Color for the AppBar
          elevation: 4, // Shadow beneath the AppBar
        ),
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => HomePage(),
        '/profile': (context) => ProfilePage(),
        '/about': (context) => AboutPage(),
        '/payment': (context) => PaymentPage(),
        '/book': (context) => BookingPage(),
      },
    );
  }
}
