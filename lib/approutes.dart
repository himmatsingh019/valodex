import 'package:get/get.dart';
import 'package:valodex/view/agent/pages/controller.dart';
import 'package:valodex/view/agent/pages/duelist.dart';
import 'package:valodex/view/agent/pages/initiator.dart';
import 'package:valodex/view/agent/pages/sentinels.dart';
import 'package:valodex/view/home/home.dart';
import 'package:valodex/view/maps/pages/ascent.dart';
import 'package:valodex/view/maps/pages/bind.dart';
import 'package:valodex/view/maps/pages/breeze.dart';
import 'package:valodex/view/maps/pages/haven.dart';
import 'package:valodex/view/maps/pages/icebox.dart';
import 'package:valodex/view/maps/pages/split.dart';

class Approutes {
  static final routes = [
    GetPage(
      name: '/home',
      page: () => HomeScreen(),
    ),

    // Agent Screen
    GetPage(
      name: '/duelist',
      page: () => DuelistScreen(),
    ),
    GetPage(
      name: '/controller',
      page: () => ControllerScreen(),
    ),
    GetPage(
      name: '/sentinel',
      page: () => SentinelScreen(),
    ),
    GetPage(
      name: '/initiator',
      page: () => InitiatorScreen(),
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
