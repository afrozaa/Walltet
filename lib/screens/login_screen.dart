import 'package:flutter/material.dart';
import 'dashboard_screen.dart'; // Import the dashboard screen



class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  // Sample data to represent the `Login` model for UI demonstration
  final Map<String, dynamic> loginData = {
    "status": "success",
    "message": "Login successful",
    "data": {
      "org": {"name": "TechOrg", "type": "IT Solutions"},
      "user": {"user_id": "123", "username": "John Doe", "mobile_no": "1234567890", "emailid": "john@example.com"},
      "contact_details": {"postal_address": "123 Tech Street", "pincode": "56789"},
      "wallet": {"balance": "5000"},
      "general": {"news": "Welcome to the TechOrg Wallet App!"},
      "payment_options": {
        "upi": "UPI123",
        "set_amount": "100",
        "upi_gateway": "UPIGateway",
        "paytm_gateway": "PaytmGateway",
        "marchant_upi": "Merchant123"
      },
      "support": {"whatsapp": "1234567890", "email": "support@techorg.com"},
      "session_id": "session123"
    }
  };

  @override
  Widget build(BuildContext context) {
    final data = loginData['data'];
    return Scaffold(
      appBar: AppBar(
        title: const Text('Login Screen'),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Display User Details
            _buildSectionTitle('User Details'),
            _buildKeyValue('User ID', data['user']['user_id']),
            _buildKeyValue('Username', data['user']['username']),
            _buildKeyValue('Mobile No', data['user']['mobile_no']),
            _buildKeyValue('Email', data['user']['emailid']),
            const SizedBox(height: 20),

            // Display Organization Details
            _buildSectionTitle('Organization'),
            _buildKeyValue('Name', data['org']['name']),
            _buildKeyValue('Type', data['org']['type']),
            const SizedBox(height: 20),

            // Display Wallet Balance
            _buildSectionTitle('Wallet Balance'),
            _buildKeyValue('Balance', data['wallet']['balance']),
            const SizedBox(height: 20),

            // Display Payment Options
            _buildSectionTitle('Payment Options'),
            _buildKeyValue('UPI', data['payment_options']['upi']),
            _buildKeyValue('Set Amount', data['payment_options']['set_amount']),
            _buildKeyValue('UPI Gateway', data['payment_options']['upi_gateway']),
            _buildKeyValue('Paytm Gateway', data['payment_options']['paytm_gateway']),
            _buildKeyValue('Merchant UPI', data['payment_options']['marchant_upi']),
            const SizedBox(height: 20),

            // Display Support
            _buildSectionTitle('Support'),
            _buildKeyValue('WhatsApp', data['support']['whatsapp']),
            _buildKeyValue('Email', data['support']['email']),
            const SizedBox(height: 20),

            // Display Contact Details
            _buildSectionTitle('Contact Details'),
            _buildKeyValue('Postal Address', data['contact_details']['postal_address']),
            _buildKeyValue('Pincode', data['contact_details']['pincode']),
            const SizedBox(height: 20),

            // Display General News
            _buildSectionTitle('News'),
            _buildKeyValue('News', data['general']['news']),
          ],
        ),
      ),
    );
  }

  // Helper Widget for Section Title
  Widget _buildSectionTitle(String title) {
    return Text(
      title,
      style: const TextStyle(
        fontSize: 18,
        fontWeight: FontWeight.bold,
      ),
    );
  }

  // Helper Widget for Key-Value Pair
  Widget _buildKeyValue(String key, String value) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            flex: 3,
            child: Text(
              "$key:",
              style: const TextStyle(fontWeight: FontWeight.bold),
            ),
          ),
          Expanded(
            flex: 7,
            child: Text(value),
          ),
        ],
      ),
    );
  }
}
