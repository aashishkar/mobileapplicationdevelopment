import 'package:flutter/material.dart';

class InboxView extends StatelessWidget {
  const InboxView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.orange,
        elevation: 0,
        title: const Text(
          'Inbox',
          style: TextStyle(
            color: Colors.white,
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
      ),
      body: const Center(
        child: Text(
          'Inbox',
          style: TextStyle(fontSize: 18),
        ),
      ),
    );
  }
}
