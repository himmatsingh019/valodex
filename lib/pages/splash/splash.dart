import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:valodex/controllers/agent_controller.dart';
import 'package:valodex/controllers/map_controller.dart';
import 'package:valodex/controllers/weapon_controller.dart';

class SplashScreen extends StatelessWidget {
  SplashScreen({Key? key}) : super(key: key);

  final controller = Get.put(AgentController(), permanent: true);
  final mapController = Get.put(MapController(), permanent: true);
  final weaponController = Get.put(WeaponController(), permanent: true);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: CircularProgressIndicator(),
      ),
    );
  }
}
