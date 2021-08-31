import 'package:get/get.dart';
import 'package:valodex/view/home/home.dart';

class Approutes {
  static final routes = [
    GetPage(
      name: '/home',
      page: () => HomeScreen(),
    ),
  ];
}
