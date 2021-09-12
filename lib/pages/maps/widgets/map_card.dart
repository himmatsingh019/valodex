import 'package:flutter/material.dart';

class MapCard extends StatelessWidget {
  MapCard({
    Key? key,
    this.image,
    this.name,
    this.overview,
    this.features,
  }) : super(key: key);

  final image, name, overview, features;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
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
      ),
    );
  }
}
