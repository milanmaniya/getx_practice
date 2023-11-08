import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

class NamedRouteDemo extends StatefulWidget {
  const NamedRouteDemo({super.key});

  @override
  State<NamedRouteDemo> createState() => _NamedRouteDemoState();
}

class _NamedRouteDemoState extends State<NamedRouteDemo> {
  final name = 'jbfjd';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Get.toNamed(
              '/bottomsheet?name=$name',
              arguments: ['sdb', 'sbh'],
            );
            log(Get.arguments[0]);
            log(Get.parameters['name']!);
            
          },
          child: const Text('Go to Named Route'),
        ),
      ),
    );
  }
}
