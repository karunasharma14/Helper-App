import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Helper'),
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
      body: Column(
        children: [
          Container(
            color: Colors.blue[50],
            padding: EdgeInsets.all(10),
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  _buildFilterChip('All'),
                  _buildFilterChip('Cleaning'),
                  _buildFilterChip('Cooking'),
                  _buildFilterChip('Baby Care'),
                  _buildFilterChip('Pet Care'),
                  _buildFilterChip('Driving'),
                  _buildFilterChip('Makeup'),
                  _buildFilterChip('Gardener'),
                  _buildFilterChip('Others'),
                ],
              ),
            ),
          ),
          Expanded(
            child: GridView.builder(
              padding: EdgeInsets.all(8),
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                childAspectRatio: 3 / 4,
              ),
              itemCount: 8, // Replace with actual helper count
              itemBuilder: (context, index) {
                return _buildHelperCard(context);
              },
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildFilterChip(String label) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 4.0),
      child: FilterChip(
        label: Text(label),
        onSelected: (_) {},
        backgroundColor: Colors.white,
        selectedColor: Colors.blue[300],
      ),
    );
  }

  Widget _buildHelperCard(BuildContext context) {
    return Card(
      elevation: 5,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.vertical(top: Radius.circular(10)),
            child: Image.asset(
              'assets/profile_placeholder.png',
              height: 100,
              width: double.infinity,
              fit: BoxFit.cover,
            ),
          ),

          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                Text('Helper Name', style: Theme.of(context).textTheme.headlineSmall),
                SizedBox(height: 5),
                Text('Cost: \Rs.250/hr', style: TextStyle(color: Colors.blueGrey)),
                SizedBox(height: 5),
                Text(
                  'About the helper an their skills. Contact Info and other Information.',
                  style: TextStyle(fontSize: 12, color: Colors.grey[600]),
                  textAlign: TextAlign.center,
                ),
                SizedBox(height: 10),
                ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/book');
                  },
                  child: Text('Book'),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
