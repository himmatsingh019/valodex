import 'package:flutter/material.dart';
import 'package:get/instance_manager.dart';
import 'package:get/get.dart';
import 'package:valodex/controllers/map_controller.dart';
import 'package:valodex/models/maps_model.dart';
import 'package:valodex/pages/maps/widgets/map_card.dart';

class MapScreen extends StatelessWidget {
  MapScreen({Key? key, this.mapName}) : super(key: key);
  final String? mapName;
  final mapController = Get.put(MapController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        toolbarHeight: 40,
        iconTheme: IconThemeData(color: Colors.black),
      ),
      body: Builder(builder: (context) {
        List<Maps> maps = mapController.maps
            .where((element) => element.displayName!.toLowerCase() == mapName)
            .toList();

        return PageView.builder(
            itemCount: maps.length,
            itemBuilder: (context, index) {
              return MapCard(
                image: maps[index].image,
                overview: maps[index].description,
                features: maps[index].feature,
                name: maps[index].displayName,
              );
            });
      }),
    );
  }
}
