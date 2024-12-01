import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Profile'),
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
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              // Profile Picture
              CircleAvatar(
                radius: 60,
                backgroundImage: AssetImage('assets/profile_placeholder.png'),
              ),

              SizedBox(height: 20),
              // Name
              Text(
                'John Doe',
                style: Theme.of(context).textTheme.headlineSmall?.copyWith(fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 10),
              // Age
              Text(
                'Age: 28',
                style: TextStyle(fontSize: 16, color: Colors.grey[700]),
              ),
              SizedBox(height: 20),
              // Bio
              Text(
                'Bio: Passionate about helping others and skilled in multiple domains like handyman services and childcare.',
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 16, color: Colors.grey[800]),
              ),
              SizedBox(height: 20),
              // Address
              ListTile(
                leading: Icon(Icons.location_on, color: Colors.blue),
                title: Text('123 Helper Street, Helping City, HC 56789'),
              ),
              // Contact Info
              ListTile(
                leading: Icon(Icons.phone, color: Colors.green),
                title: Text('+1 234 567 890'),
              ),
              ListTile(
                leading: Icon(Icons.email, color: Colors.red),
                title: Text('johndoe@example.com'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
