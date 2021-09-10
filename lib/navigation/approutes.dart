import 'package:get/get.dart';
import 'package:valodex/pages/home/home.dart';
import 'package:valodex/pages/maps/map.dart';
import 'package:valodex/pages/splash/splash.dart';

class Approutes {
  static final routes = [
    // Screen Routes
    GetPage(
      name: '/home',
      page: () => HomeScreen(),
    ),
    GetPage(
      name: '/splash',
      page: () => SplashScreen(),
    ),
    GetPage(
      name: '/map',
      page: () => MapScreen(),
    ),
  ];
}
