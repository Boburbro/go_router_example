import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({
    required this.name,
    this.username = '',
    super.key,
  });
  final String name;
  final String username;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Profile Screen"),
        centerTitle: true,
      ),
      body: Center(
        child: Text("Welcome $name"),
      ),
    );
  }
}
