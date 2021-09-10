import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:valodex/utils/constant.dart';

class AgentCard extends StatelessWidget {
  final height = Get.height;

  final width = Get.width;

  final name, type, image, data;
  String? color;
  AgentCard({
    Key? key,
    this.name,
    this.type,
    this.data,
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
    return NestedScrollView(
      headerSliverBuilder: (context, innerBoxIsScrolled) {
        return [
          SliverAppBar(
            backgroundColor: colorConvert(color!),
            expandedHeight: 480,
            pinned: true,
            stretch: true,
            snap: false,
            flexibleSpace: FlexibleSpaceBar(
              title: Text(
                name,
                style:
                    TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
              ),
              centerTitle: true,
              background: Column(
                children: [
                  Container(
                    padding: EdgeInsets.only(top: 80),
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
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ];
      },
      body: Container(
        height: 400,
        color: Colors.red,
      ),
    );
  }
}
