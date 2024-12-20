import 'package:flutter/material.dart';

class SignupScreen extends StatelessWidget {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.white, // Light background color
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Form(
              key: _formKey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 50),
                  Center(
                    child: Image.asset(
                      'assets/images/register.png',
                      height: 300,
                    ),
                  ),
                  SizedBox(height: 20),
                  Text(
                    "Sign Up",
                    style: TextStyle(
                      fontSize: 32,
                      fontWeight: FontWeight.bold,
                      color: Colors.black, // Black text color for contrast
                    ),
                  ),
                  SizedBox(height: 20),
                  TextFormField(
                    decoration: InputDecoration(
                      labelText: "Username",
                      prefixIcon: Icon(Icons.person, color: Colors.grey),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide(color: Colors.blue),
                      ),
                    ),
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return "Please enter your username";
                      }
                      return null;
                    },
                  ),
                  SizedBox(height: 16),
                  TextFormField(
                    keyboardType: TextInputType.phone,
                    decoration: InputDecoration(
                      labelText: "Phone Number",
                      prefixIcon: Icon(Icons.phone, color: Colors.grey),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide(color: Colors.blue),
                      ),
                    ),
                    validator: (value) {
                      if (value == null || value.length != 10) {
                        return "Enter a valid 10-digit phone number";
                      }
                      return null;
                    },
                  ),
                  SizedBox(height: 16),
                  TextFormField(
                    keyboardType: TextInputType.emailAddress,
                    decoration: InputDecoration(
                      labelText: "Email",
                      prefixIcon: Icon(Icons.email, color: Colors.grey),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide(color: Colors.blue),
                      ),
                    ),
                    validator: (value) {
                      if (value == null || !value.contains('@')) {
                        return "Enter a valid email";
                      }
                      return null;
                    },
                  ),
                  SizedBox(height: 16),
                  DropdownButtonFormField<String>(
                    decoration: InputDecoration(
                      labelText: "Business type",
                      prefixIcon: Icon(Icons.store, color: Colors.grey),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide(color: Colors.blue),
                      ),
                    ),
                    items: [
                      DropdownMenuItem(value: "Merchant", child: Text("Merchant")),
                      DropdownMenuItem(value: "Customer", child: Text("Customer")),
                    ],
                    onChanged: (value) {},
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return "Please select a business type";
                      }
                      return null;
                    },
                  ),
                  SizedBox(height: 16),
                  TextFormField(
                    obscureText: true,
                    decoration: InputDecoration(
                      labelText: "Password",
                      prefixIcon: Icon(Icons.lock, color: Colors.grey),
                      helperText:
                      "Password must be 6 characters, include an uppercase, lowercase, number, and special character.",
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide(color: Colors.blue),
                      ),
                    ),
                    validator: (value) {
                      if (value == null || value.length < 6) {
                        return "Password must be at least 6 characters long";
                      }
                      return null;
                    },
                  ),
                  SizedBox(height: 16),
                  TextFormField(
                    obscureText: true,
                    decoration: InputDecoration(
                      labelText: "Confirm Password",
                      prefixIcon: Icon(Icons.lock, color: Colors.grey),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                        borderSide: BorderSide(color: Colors.blue),
                      ),
                    ),
                    validator: (value) {
                      if (value == null || value != "password") {
                        return "Passwords do not match";
                      }
                      return null;
                    },
                  ),
                  SizedBox(height: 30),
                  SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(
                      onPressed: () {
                        if (_formKey.currentState!.validate()) {
                          // Handle successful form submission
                        }
                      },
                      style: ElevatedButton.styleFrom(
                        padding: EdgeInsets.symmetric(vertical: 16),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        backgroundColor: Colors.blue, // Primary blue button color
                      ),
                      child: Text(
                        "Sign Up",
                        style: TextStyle(
                          fontSize: 18,
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 16),
                  Center(
                    child: TextButton(
                      onPressed: () {
                        Navigator.pushNamed(context, '/login');
                      },
                      child: Text(
                        "Already have an account? Log in",
                        style: TextStyle(color: Colors.blue),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
