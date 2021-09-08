import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MapCard extends StatelessWidget {
  final image, name, description, feature;
  const MapCard(
      {Key? key, this.image, this.name, this.description, this.feature})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          width: Get.width,
          height: 60,
          child: IconButton(
            splashRadius: 1,
            alignment: Alignment.centerLeft,
            icon: Icon(Icons.arrow_back),
            onPressed: () {
              Get.back();
            },
          ),
        ),
        Stack(
          children: [
            Image.network(
              image,
            ),
            Positioned(
              bottom: 20,
              right: 10,
              child: Container(
                width: 90,
                height: 40,
                decoration: BoxDecoration(
                  color: Colors.white70,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Center(
                  child: Text(
                    name,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      letterSpacing: 3,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
        SizedBox(height: 16),
        Padding(
          padding: const EdgeInsets.only(left: 10),
          child: Text(
            '// OVERVIEW',
            style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
          ),
        ),
        SizedBox(height: 10),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10.0),
          child: Text(description),
        ),
        SizedBox(height: 16),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10.0),
          child: Text(
            '// MAP FEATURES',
            style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
          ),
        ),
        SizedBox(height: 8),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10.0),
          child: Text(feature),
        ),
      ],
    );
  }
}
