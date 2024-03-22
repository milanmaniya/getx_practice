import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

class GetStorageEmailValidation extends StatefulWidget {
  const GetStorageEmailValidation({super.key});

  @override
  State<GetStorageEmailValidation> createState() =>
      _GetStorageEmailValidationState();
}

class _GetStorageEmailValidationState extends State<GetStorageEmailValidation> {
  var emailController = TextEditingController();
  var storage = GetStorage();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 20,
          vertical: 20,
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              TextFormField(
                controller: emailController,
                decoration: InputDecoration(
                  hintText: 'Enter Email Address',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              ElevatedButton(
                onPressed: () {
                  if (GetUtils.isEmail(emailController.text)) {
                    storage.write('email', emailController.text);
                    log('write completed');
                    emailController.clear();
                  } else {
                    Get.snackbar(
                      'Incorrect Email',
                      'Provide Email In Valid Format',
                    );
                  }
                },
                child: const Text('Write'),
              ),
              const SizedBox(
                height: 30,
              ),
              ElevatedButton(
                onPressed: () {
                  log("Email is ${storage.read("email")}");
                },
                child: const Text('Read'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
