import 'package:flutter/material.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:getx_practice/bottom_modal_sheet.dart';
import 'package:getx_practice/named_route.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      initialRoute: '/named',

      getPages: [
        GetPage(
          name: '/named',
          page: () => const NamedRouteDemo(),
        ),
        GetPage(
          name: '/bottomsheet',
          page: () => const BottomModalSheetDemo(),
          
        ),
      ],
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: true,
      ),
      
    );
  }
}
