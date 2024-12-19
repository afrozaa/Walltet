import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'send_money_screen.dart';

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Dashboard'),
        actions: [
          IconButton(
            icon: const Icon(Icons.notifications),
            onPressed: () {},
          ),
        ],
      ),
      body: Column(
        children: [
          // Account balance section
          Container(
            padding: const EdgeInsets.all(20),
            color: Colors.blue,
            child: Column(
              children: [
                Text(
                  'Account Balance',
                  style: GoogleFonts.roboto(color: Colors.white, fontSize: 16),
                ),
                const SizedBox(height: 10),
                const Text(
                  '\$267,345',
                  style: TextStyle(color: Colors.white, fontSize: 36, fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
          // Quick actions
          Expanded(
            child: GridView(
              padding: const EdgeInsets.all(15),
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                mainAxisSpacing: 15,
                crossAxisSpacing: 15,
              ),
              children: [
                _buildQuickAction(
                  icon: Icons.send,
                  label: 'Send Money',
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const SendMoneyScreen()),
                    );
                  },
                ),
                _buildQuickAction(icon: Icons.receipt, label: 'My Transactions'),
                _buildQuickAction(icon: Icons.money, label: 'Cashout'),
                _buildQuickAction(icon: Icons.payment, label: 'Payment'),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildQuickAction({required IconData icon, required String label, VoidCallback? onTap}) {
    return GestureDetector(
      onTap: onTap,
      child: Card(
        elevation: 5,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircleAvatar(
              radius: 30,
              backgroundColor: Colors.blue.withOpacity(0.2),
              child: Icon(icon, color: Colors.blue, size: 30),
            ),
            const SizedBox(height: 10),
            Text(label, style: const TextStyle(fontSize: 16, fontWeight: FontWeight.w600)),
          ],
        ),
      ),
    );
  }
}
