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
          height: 60,
          color: colorConvert(color!),
          child: IconButton(
            alignment: Alignment.centerLeft,
            icon: Icon(Icons.arrow_back),
            onPressed: () {},
          ),
        ),
        Container(
          height: 310,
          padding: EdgeInsets.only(left: 20, right: 6),
          color: colorConvert(color!),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    'assets/png/logo.png',
                    height: 80,
                    width: 80,
                  ),
                  SizedBox(height: 20),
                  Text(
                    name,
                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      letterSpacing: 2,
                    ),
                  ),
                  SizedBox(height: 20),
                  Container(
                    height: 24,
                    width: 90,
                    decoration: BoxDecoration(
                      color: Colors.white54,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Center(
                      child: Text(
                        type,
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              Image.network(
                baseURL + agentsImageURL + image + '.png',
                height: 286,
              ),
            ],
          ),
        ),
      ],
    );
  }
}

class DetailCard extends StatelessWidget {
  final about;
  const DetailCard({Key? key, this.about}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Text(
          'About',
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
        Text(about),
      ],
    );
  }
}
