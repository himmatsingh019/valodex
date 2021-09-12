import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:valodex/models/agents_model.dart';
import 'package:valodex/utils/constant.dart';

class AgentCard extends StatelessWidget {
  final height = Get.height;
  final width = Get.width;

  final Agent agent;

  String? color;
  AgentCard({Key? key, required this.agent, required this.color})
      : super(key: key);

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
              agent.displayName ?? '',
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
                        baseURL + agentsImageURL + agent.id! + '.png',
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
                            agent.roleName ?? '',
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
                    Text(agent.description ?? ''),
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
                        image: agent.displayIcon1,
                        ability: agent.displayName1,
                        description: agent.description1),
                    SizedBox(height: 18),
                    AbilityCard(
                        image: agent.displayIcon2,
                        ability: agent.displayName2,
                        description: agent.description2),
                    SizedBox(height: 18),
                    AbilityCard(
                        image: agent.displayIcon3,
                        ability: agent.displayName3,
                        description: agent.description3),
                    SizedBox(height: 18),
                    AbilityCard(
                        image: agent.displayIcon4,
                        ability: agent.displayName4,
                        description: agent.description4),
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
