import 'package:flutter/material.dart';
import 'package:get/instance_manager.dart';
import 'package:valodex/controllers/map_controller.dart';

class MapScreen extends StatelessWidget {
  MapScreen({Key? key}) : super(key: key);

  final mapController = Get.put(MapController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: <Widget>[
            Container(
              height: 100,
              color: Colors.red,
              child: ListView.builder(
                  itemCount: mapController.maps.length,
                  itemBuilder: (context, index) {
                    return Container();
                  }),
            )
          ],
        ),
      ),
    );
  }
}
