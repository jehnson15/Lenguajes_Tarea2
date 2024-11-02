import 'package:flutter/material.dart';

void main() {
  runApp(const CoffeeStoriesApp());
}

class CoffeeStoriesApp extends StatelessWidget {
  const CoffeeStoriesApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Coffee Stories',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: const ProfileScreen(),
    );
  }
}

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        toolbarHeight: 40,
        leading: Container(),
        actions: const [
          Icon(Icons.more_vert, color: Colors.black),
          SizedBox(width: 16),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            CircleAvatar(
              radius: 40,
              backgroundColor: Colors.green[100],
              child: ClipOval(
                child: Image.asset(
                  'assets/images/logoacademia.jpg',
                  fit: BoxFit.cover,
                  width: 80,
                  height: 80,
                ),
              ),
            ),
            const SizedBox(height: 16),
            const Text(
              'Academia Jireth',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            const Text(
              'academiajireth@gmail.com',
              style: TextStyle(fontSize: 16, color: Colors.grey),
            ),
            const SizedBox(height: 16),
            ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.black,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
              ),
              child: const Text(
                'Edit profile',
                style: TextStyle(color: Colors.white),
              ),
            ),
            const SizedBox(height: 24),
            _buildSectionTitle('Inventories'),
            _buildInventoryOption(context, Icons.store, 'My stores', '2'),
            _buildInventoryOption(context, Icons.support, 'Support', ''),
            const SizedBox(height: 24),
            _buildSectionTitle('Preferences'),
            _buildPreferenceOption(
                context, Icons.notifications, 'Push notifications', true),
            _buildPreferenceOption(context, Icons.face, 'Face ID', true),
            _buildNavigationOption(context, Icons.lock, 'PIN Code'),
            const Divider(height: 32),
            _buildLogoutButton(context),
          ],
        ),
      ),
    );
  }

  Widget _buildSectionTitle(String title) {
    return Align(
      alignment: Alignment.centerLeft,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 8.0),
        child: Text(
          title,
          style: const TextStyle(fontSize: 16, color: Colors.grey),
        ),
      ),
    );
  }

  Widget _buildInventoryOption(
      BuildContext context, IconData icon, String title, String badgeText) {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
      child: ListTile(
        leading: Icon(icon, color: Colors.black),
        title: Text(title),
        trailing: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            if (badgeText.isNotEmpty)
              CircleAvatar(
                radius: 10,
                backgroundColor: Colors.green,
                child: Text(
                  badgeText,
                  style: const TextStyle(color: Colors.white, fontSize: 12),
                ),
              ),
            const Icon(Icons.arrow_forward_ios, size: 16, color: Colors.grey),
          ],
        ),
      ),
    );
  }

  Widget _buildPreferenceOption(
      BuildContext context, IconData icon, String title, bool switchValue) {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
      child: ListTile(
        leading: Icon(icon, color: Colors.black),
        title: Text(title),
        trailing: Switch(
          value: switchValue,
          onChanged: (value) {},
        ),
      ),
    );
  }

  Widget _buildNavigationOption(
      BuildContext context, IconData icon, String title) {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
      child: ListTile(
        leading: Icon(icon, color: Colors.black),
        title: Text(title),
        trailing:
            const Icon(Icons.arrow_forward_ios, size: 16, color: Colors.grey),
      ),
    );
  }

  Widget _buildLogoutButton(BuildContext context) {
    return Align(
      alignment: Alignment.centerLeft,
      child: TextButton(
        onPressed: () {},
        child: const Text(
          'Logout',
          style: TextStyle(color: Colors.red),
        ),
      ),
    );
  }
}
