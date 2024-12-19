import 'package:flutter/material.dart';

class TransactionScreen extends StatelessWidget {
  const TransactionScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Transactions")),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            const Text(
              'Balance: \$267,345',
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 20),
            const Text(
              'Recent Transactions',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),
            ListTile(
              title: const Text('Purchase at Amazon'),
              subtitle: const Text('Amount: \$50.00'),
              trailing: const Icon(Icons.arrow_forward_ios),
              onTap: () {
                // Navigate to transaction details screen
              },
            ),
            ListTile(
              title: const Text('Purchase at Walmart'),
              subtitle: const Text('Amount: \$100.00'),
              trailing: const Icon(Icons.arrow_forward_ios),
              onTap: () {
                // Navigate to transaction details screen
              },
            ),
            // Add more transactions here
          ],
        ),
      ),
    );
  }
}
