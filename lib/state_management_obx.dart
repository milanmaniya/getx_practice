import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

class StateManagementObx extends StatelessWidget {
  const StateManagementObx({super.key});

  @override
  Widget build(BuildContext context) {
    final student = Student();

    final name = student.name;

    final number = 0.obs;
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Obx(
              () => Text(
                number.value.toString(),
                style: const TextStyle(
                  color: Colors.black,
                  fontSize: 30,
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            ElevatedButton(
              onPressed: () {
                number.value++;
                log(number.value.toString());
              },
              child: const Text('Increment'),
            ),
            const SizedBox(
              height: 30,
            ),
            Obx(
              () => Text(
              name.value.toString(),
                style: const TextStyle(
                  color: Colors.black,
                  fontSize: 30,
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            ElevatedButton(
              onPressed: () {
                name.value= name.value.toUpperCase();
                log(name.value.toString());
              },
              child: const Text('UpperCase'),
            ),
          ],
        ),
      ),
    );
  }
}

class Student {
  final name = 'milan'.obs;
}
