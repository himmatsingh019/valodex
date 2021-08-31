import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
import 'package:valodex/approutes.dart';
import 'package:valodex/constants/materialTheme.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/home',
      theme: getMaterialTheme(context),
      getPages: Approutes.routes,
    );
  }
}
