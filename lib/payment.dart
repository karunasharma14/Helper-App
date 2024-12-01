import 'package:flutter/material.dart';

class PaymentPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Payment'),
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
            Text('Add Debit Card for Payment', style: Theme.of(context).textTheme.headlineSmall),
            SizedBox(height: 20),
            TextField(
              decoration: InputDecoration(labelText: 'Card Number'),
            ),
            TextField(
              decoration: InputDecoration(labelText: 'Card Holder Name'),
            ),
            TextField(
              decoration: InputDecoration(labelText: 'CVV'),
              obscureText: true,
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {},
              child: Text('Add Card'),
            ),
          ],
        ),
      ),
    );
  }
}
