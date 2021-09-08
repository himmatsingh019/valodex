import 'package:get/get.dart';
import 'package:valodex/view/home/home.dart';
import 'package:valodex/view/maps/pages/ascent.dart';
import 'package:valodex/view/maps/pages/bind.dart';
import 'package:valodex/view/maps/pages/breeze.dart';
import 'package:valodex/view/maps/pages/haven.dart';
import 'package:valodex/view/maps/pages/icebox.dart';
import 'package:valodex/view/maps/pages/split.dart';
import 'package:valodex/view/splash/splash.dart';

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

    //Map Routes
    GetPage(
      name: '/ascent',
      page: () => AscentScreen(),
    ),
    GetPage(
      name: '/icebox',
      page: () => IceboxScreen(),
    ),
    GetPage(
      name: '/breeze',
      page: () => BreezeScreen(),
    ),
    GetPage(
      name: '/bind',
      page: () => BindScreen(),
    ),
    GetPage(
      name: '/haven',
      page: () => HavenScreen(),
    ),
    GetPage(
      name: '/split',
      page: () => SplitScreen(),
    ),
  ];
}
