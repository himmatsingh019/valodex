import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/widgets.dart';
import 'package:get/instance_manager.dart';
import 'package:get/get.dart';
import 'package:valodex/controllers/map_controller.dart';
import 'package:valodex/models/maps_model.dart';

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
              return MapDetail(
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

class MapDetail extends StatelessWidget {
  const MapDetail({
    Key? key,
    this.image,
    this.name,
    this.overview,
    this.features,
  }) : super(key: key);

  final image, name, overview, features;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Stack(
          children: [
            Image.network(image),
            Positioned(
              bottom: 12,
              right: 20,
              child: Container(
                height: 38,
                width: 110,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.white70,
                ),
                child: Center(
                  child: Text(
                    name,
                    style: const TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                      letterSpacing: 2,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
        SizedBox(height: 18),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                '// OVERVIEW',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 18),
              Text(overview),
              SizedBox(height: 20),
              Text(
                '// MAP FEATURES',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 18),
              Text(features),
            ],
          ),
        ),
      ],
    );
  }
}
