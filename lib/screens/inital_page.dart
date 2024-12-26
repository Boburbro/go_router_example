import 'package:flutter/material.dart';

class InitalPage extends StatelessWidget {
  const InitalPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.amber,
      appBar: AppBar(
        title: Text("Inital Page"),
        centerTitle: true,
      ),
    );
  }
}
