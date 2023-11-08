import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_practice/bottom_modal_sheet.dart';

class RouteDemo extends StatefulWidget {
  const RouteDemo({super.key});

  @override
  State<RouteDemo> createState() => _RouteDemoState();
}

class _RouteDemoState extends State<RouteDemo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Get.to(
              const BottomModalSheetDemo(),
              arguments: ['Hello', 'Milan'],
              duration: const Duration(seconds: 3),
              fullscreenDialog: false,
              transition: Transition.zoom,
              curve: Curves.bounceIn,
            );

            log(Get.arguments.toString());
          },
          child: const Text('Go to Navigate'),
        ),
      ),
    );
  }
}
