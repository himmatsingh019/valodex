import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:valodex/utils/constant.dart';

class AgentCard extends StatelessWidget {
  final height = Get.height;
  final width = Get.width;

  final name,
      type,
      image,
      overview,
      displayName1,
      icon1,
      displayName2,
      icon2,
      displayName3,
      icon3,
      displayName4,
      icon4,
      desc1,
      desc2,
      desc3,
      desc4;
  String? color;
  AgentCard({
    Key? key,
    this.name,
    this.type,
    this.overview,
    this.image,
    required this.color,
    this.displayName1,
    this.icon1,
    this.displayName2,
    this.icon2,
    this.displayName3,
    this.icon3,
    this.displayName4,
    this.icon4,
    this.desc1,
    this.desc2,
    this.desc3,
    this.desc4,
  }) : super(key: key);

  Color colorConvert(String color) {
    var converted;
    converted = Color(int.parse(color));
    return converted;
  }

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: <Widget>[
        SliverAppBar(
          backgroundColor: colorConvert(color!),
          expandedHeight: 480,
          pinned: true,
          stretch: true,
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
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Image.network(
                        baseURL + agentsImageURL + image + '.png',
                        height: 330,
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
        SliverList(
          delegate: SliverChildBuilderDelegate(
            (context, index) {
              return Padding(
                padding: const EdgeInsets.only(left: 12.0, right: 8, top: 10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      '// OVERVIEW',
                      style: TextStyle(
                        fontSize: 20,
                        letterSpacing: 1.2,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 10),
                    Text(overview),
                    SizedBox(height: 10),
                    Text(
                      '// ABILTIES',
                      style: TextStyle(
                        fontSize: 20,
                        letterSpacing: 1.8,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 20),
                    AbilityCard(
                        image: icon1,
                        ability: displayName1,
                        description: desc1),
                    SizedBox(height: 18),
                    AbilityCard(
                        image: icon2,
                        ability: displayName2,
                        description: desc2),
                    SizedBox(height: 18),
                    AbilityCard(
                        image: icon3,
                        ability: displayName3,
                        description: desc3),
                    SizedBox(height: 18),
                    AbilityCard(
                        image: icon4,
                        ability: displayName4,
                        description: desc4),
                    SizedBox(height: 18),
                  ],
                ),
              );
            },
            childCount: 1,
          ),
        ),
      ],
    );
  }
}

class AbilityCard extends StatelessWidget {
  final image, ability, description;
  const AbilityCard({
    Key? key,
    this.image,
    this.ability,
    this.description,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          height: 150,
          width: 110,
          decoration: BoxDecoration(
            color: Color(0xFFC83B3B),
            borderRadius: BorderRadius.circular(4),
            image: DecorationImage(
              image: NetworkImage(image, scale: 1.5),
            ),
          ),
        ),
        SizedBox(width: 20),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                ability,
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                ),
              ),
              SizedBox(height: 10),
              Container(
                width: 400,
                child: Text(description),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
