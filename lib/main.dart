import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:get_storage/get_storage.dart';
import 'package:getx_practice/Network_Connectivity/binding/network_binding.dart';
import 'package:getx_practice/Network_Connectivity/ui.dart';
import 'package:getx_practice/injection.dart';

Future<void> main() async {
  await GetStorage.init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    AllController().controller;

    return GetMaterialApp(
      initialBinding: NetworkBinding(),
      title: 'binding',

      // initialRoute: '/named',
      // getPages: [
      //   GetPage(
      //     name: '/named',
      //     page: () => const NamedRouteDemo(),
      //   ),
      //   GetPage(
      //     name: '/bottomsheet',
      //     page: () => const BottomModalSheetDemo(),
      //   ),
      // ],

      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: true,
      ),

      home: const NetworkUi(),
    );
  }
}
