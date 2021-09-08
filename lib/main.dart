import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:valodex/navigation/approutes.dart';
import 'package:valodex/services/dio.dart';
import 'package:valodex/utils/materialTheme.dart';

void main() {
  Get.put(DioBaseService(), permanent: true);
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/splash',
      theme: getMaterialTheme(context),
      getPages: Approutes.routes,
    );
  }
}
