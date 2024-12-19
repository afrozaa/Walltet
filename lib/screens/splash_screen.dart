import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SplashScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Set a delay before routing to the HomeScreen
    Future.delayed(Duration(seconds: 3), () {
      Navigator.pushReplacementNamed(context, '/home');
    });

    return Scaffold(
      backgroundColor: Colors.lightBlueAccent,
      body: Center(
        child: Text(
          'Wallet',
          style: GoogleFonts.playfairDisplay(
            fontSize: 30,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
