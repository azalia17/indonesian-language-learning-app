import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(
          'Profile Screen',
          style: TextStyle(
              fontFamily: "poppins",
              fontWeight: FontWeight.bold,
              fontSize: 20,
              color: Colors.amber[600]!
          ),
        ),
      ),
    );
  }
}
