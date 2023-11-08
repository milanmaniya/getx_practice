import 'package:flutter/material.dart';

class BottomModalSheetDemo extends StatefulWidget {
  const BottomModalSheetDemo({super.key});

  @override
  State<BottomModalSheetDemo> createState() => _BottomModalSheetDemoState();
}

class _BottomModalSheetDemoState extends State<BottomModalSheetDemo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(
          onPressed: () {},
          child: const Text('Show Modal Bottom Sheet'),
        ),
      ),
    );
  }
}
