import 'dart:developer';

import 'package:flutter/material.dart';

class VisibilityUi extends StatefulWidget {
  const VisibilityUi({super.key});

  @override
  State<VisibilityUi> createState() => _VisibilityUiState();
}

class _VisibilityUiState extends State<VisibilityUi> {
  final onSelected = List.generate(4, (index) => false);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemCount: onSelected.length,
        itemBuilder: (context, index) => Container(
          alignment: Alignment.center,
          decoration: BoxDecoration(
            color: Colors.grey,
            borderRadius: BorderRadius.circular(16),
          ),
          margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
          child: onSelected == false
              ? ListTile(
                  title: const Text('Hello Milan'),
                  subtitle: const Text('Good Morning'),
                  trailing: IconButton(
                    onPressed: () {
                      if (onSelected[index]) {
                        onSelected[index] = !onSelected[index];
                      } else {
                        onSelected[index] = !onSelected[index];
                      }
                      setState(() {
                        log(onSelected[index].toString());
                      });
                    },
                    icon: const Icon(
                      Icons.arrow_drop_down_rounded,
                      size: 20,
                    ),
                  ),
                )
              : ExpansionTile(
                  title: const Text('Hello Milan'),
                  subtitle: const Text('Good Morning'),
                  children: [
                    ...List.generate(
                      3,
                      (index) => const Text(
                        'Tulsi',
                      ),
                    ),
                  ],
                ),
        ),
      ),
    );
  }
}
