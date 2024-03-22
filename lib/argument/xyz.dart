import 'package:flutter/material.dart';
import 'package:get/get.dart';

class XyzScreen extends StatelessWidget {
  const XyzScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final arg = Get.arguments;

    return Scaffold(
      backgroundColor: Colors.blueGrey.shade200,
      appBar: AppBar(
        backgroundColor: Colors.blueGrey.shade200,
        automaticallyImplyLeading: false,
        elevation: 0,
        centerTitle: true,
        title: const Text(
          'jbjfjd',
          style: TextStyle(
            color: Colors.white,
            fontSize: 20,
          ),
        ),
      ),
      body: Center(
        child: Text(
          arg['name'],
          style: const TextStyle(
            color: Colors.white,
            fontSize: 20,
          ),
        ),
      ),
    );
  }
}
