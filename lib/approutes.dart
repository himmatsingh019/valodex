import 'package:get/get.dart';
import 'package:valodex/view/agent/controller.dart';
import 'package:valodex/view/agent/duelist.dart';
import 'package:valodex/view/agent/initiator.dart';
import 'package:valodex/view/agent/sentinels.dart';
import 'package:valodex/view/home/home.dart';

class Approutes {
  static final routes = [
    GetPage(
      name: '/home',
      page: () => HomeScreen(),
    ),
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
  ];
}
