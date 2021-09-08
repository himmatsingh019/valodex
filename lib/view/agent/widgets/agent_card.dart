import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:valodex/utils/constant.dart';

class AgentCard extends StatelessWidget {
  final height = Get.height;

  final width = Get.width;

  final name, type, image;
  String? color;
  AgentCard({
    Key? key,
    this.name,
    this.type,
    this.image,
    required this.color,
  }) : super(key: key);

  Color colorConvert(String color) {
    var converted;
    converted = Color(int.parse(color));
    return converted;
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: Get.width,
          height: 40,
          color: colorConvert(color!),
          child: IconButton(
            alignment: Alignment.centerLeft,
            icon: Icon(Icons.arrow_back),
            onPressed: () {
              Get.back();
            },
          ),
        ),
        Container(
          height: 440,
          width: Get.width,
          color: colorConvert(color!),
          child: Column(
            children: <Widget>[
              Image.network(
                baseURL + agentsImageURL + image + '.png',
                height: 300,
              ),
              SizedBox(height: 30),
              Container(
                height: 28,
                width: 120,
                decoration: BoxDecoration(
                  color: Colors.white.withOpacity(0.5),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Center(
                  child: Text(
                    type,
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
              ),
              SizedBox(height: 14),
              Text(
                name,
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 2,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
