import 'package:flutter/material.dart';
import 'package:transaction_app/screens/splash_screen.dart';
import 'package:transaction_app/screens/signup_screen.dart';
import 'package:transaction_app/screens/home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Wallet',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      debugShowCheckedModeBanner: false, // This disables the debug banner
      initialRoute: '/', // SplashScreen as the initial route
      routes: {
        '/': (context) => SplashScreen(), // Initial route is SplashScreen
        '/home': (context) => HomeScreen(), // Route to HomeScreen
       // '/login': (context) => LoginScreen(), // Route to LoginScreen (Uncommented)
        '/register': (context) => SignupScreen(), // Route to SignupScreen
      },
    );
  }
}
