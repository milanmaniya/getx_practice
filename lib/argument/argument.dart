import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_practice/argument/xyz.dart';

class ArgumentScreen extends StatefulWidget {
  const ArgumentScreen({super.key});

  @override
  State<ArgumentScreen> createState() => _ArgumentScreenState();
}

class _ArgumentScreenState extends State<ArgumentScreen> {
  final _txtSearch = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 15,
          vertical: 20,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            TextField(
              decoration: InputDecoration(
                labelText: 'Write Here',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
              ),
              controller: _txtSearch,
              onSubmitted: (value) {
                setState(() {
                  _txtSearch.text = value;
                });
              },
            ),
            const SizedBox(
              height: 20,
            ),
            TextButton(
              onPressed: () {
                if (_txtSearch.text.isNotEmpty) {
                  log(_txtSearch.text.toString());
                  Get.to(
                    () => const XyzScreen(),
                    transition: Transition.downToUp,
                    curve: Curves.bounceIn,
                    arguments: {
                      'name': '',
                    },
                  );
                }
              },
              child: const Text('Submit'),
            ),
          ],
        ),
      ),
    );
  }
}
