import 'package:flutter/material.dart';

class AboutPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('About'),
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
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'About Helper Application',
              style: Theme.of(context).textTheme.headlineSmall,
            ),
            SizedBox(height: 10),
            Text(
              'Our mission is to connect people with the best helpers available. '
              'We provide a platform to find and book helpers for various tasks.',
              style: Theme.of(context).textTheme.bodySmall,
            ),
            SizedBox(height: 10),
            Text('Why Choose Us?', style: Theme.of(context).textTheme.headlineSmall),
            Text('• Trusted Helpers\n• Easy Booking\n• Secure Payments\n• Wide Range of Services'),
          ],
        ),
      ),
    );
  }
}
