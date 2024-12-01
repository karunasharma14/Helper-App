import 'package:flutter/material.dart';

class BookingPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Booking'),
        actions: [
          PopupMenuButton(
            onSelected: (value) {
              Navigator.pushNamed(context, value);
            },
            itemBuilder: (context) => [
              PopupMenuItem(value: '/profile', child: Text('Profile')),
              PopupMenuItem(value: '/about', child: Text('About')),
              PopupMenuItem(value: '/payment', child: Text('Payment')),
              PopupMenuItem(value: '/', child: Text('Logout')),
            ],
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Text('Select Date and Time for Booking', style: Theme.of(context).textTheme.headlineSmall),
            TextField(
              decoration: InputDecoration(labelText: 'Date (YYYY-MM-DD)'),
            ),
            TextField(
              decoration: InputDecoration(labelText: 'Time (HH:MM)'),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {},
              child: Text('Confirm Booking'),
            ),
          ],
        ),
      ),
    );
  }
}
