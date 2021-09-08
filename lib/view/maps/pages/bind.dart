import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:valodex/controllers/map_controller.dart';
import 'package:valodex/view/maps/widgets/map_card.dart';

class BindScreen extends StatelessWidget {
  BindScreen({Key? key}) : super(key: key);

  final mapController = Get.put(MapController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          height: Get.height,
          child: GetBuilder<MapController>(
            builder: (controller) {
              return ListView.builder(
                itemCount: 1,
                itemBuilder: (context, index) {
                  return MapCard(
                    name: mapController.maps[1].displayName,
                    image: mapController.maps[1].image,
                    description: mapController.maps[1].description,
                  );
                },
              );
            },
          ),
        ),
      ),
    );
  }
}
