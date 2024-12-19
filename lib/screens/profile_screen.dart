import 'package:flutter/material.dart';
import 'login_screen.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20),
      child: Column(
        children: [
          // User profile info
          const CircleAvatar(
            radius: 50,
            backgroundImage: NetworkImage('https://www.example.com/profile.jpg'), // Add your profile image here
          ),
          const SizedBox(height: 20),
          const Text(
            'Loren Name',
            style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
          ),
          const Text('Loren ipsum dolor sit amet'),
          const SizedBox(height: 40),

          // Profile options list
          ListTile(
            leading: const Icon(Icons.message),
            title: const Text('Messages'),
            trailing: const Icon(Icons.arrow_forward_ios),
            onTap: () {
              // Navigate to messages screen
              // Add navigation code here when you have a MessagesScreen
            },
          ),
          ListTile(
            leading: const Icon(Icons.notifications),
            title: const Text('Notifications'),
            trailing: const Icon(Icons.arrow_forward_ios),
            onTap: () {
              // Navigate to notifications screen
              // Add navigation code here when you have a NotificationsScreen
            },
          ),
          ListTile(
            leading: const Icon(Icons.account_circle),
            title: const Text('Account Details'),
            trailing: const Icon(Icons.arrow_forward_ios),
            onTap: () {
              // Navigate to account details screen
              // Add navigation code here when you have an AccountDetailsScreen
            },
          ),
          ListTile(
            leading: const Icon(Icons.shopping_cart),
            title: const Text('My Purchases'),
            trailing: const Icon(Icons.arrow_forward_ios),
            onTap: () {
              // Navigate to my purchases screen
              // Add navigation code here when you have a MyPurchasesScreen
            },
          ),
          ListTile(
            leading: const Icon(Icons.settings),
            title: const Text('Settings'),
            trailing: const Icon(Icons.arrow_forward_ios),
            onTap: () {
              // Navigate to settings screen
              // Add navigation code here when you have a SettingsScreen
            },
          ),
          const Spacer(),
          // Log out button
          ElevatedButton(
            onPressed: () {
              // Log out and navigate back to login screen
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(builder: (context) => LoginScreen()), // Removed 'const' here
              );
            },
            child: const Text('Log Out'),
          ),
        ],
      ),
    );
  }
}
