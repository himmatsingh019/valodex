import 'package:flutter/material.dart';
import 'package:get/state_manager.dart';
import 'package:valodex/controllers/agent_controller.dart';
import 'package:get/get.dart';
import 'package:valodex/models/agents_model.dart';
import 'package:valodex/pages/agent/widgets/agent_card.dart';

class AgentScreen extends StatelessWidget {
  final String roleType;
  final AgentController agentController = Get.find();
  AgentScreen({Key? key, required this.roleType}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Builder(
        builder: (context) {
          List<Agent> agents = agentController.agents
              .where((element) => element.roleName!.toLowerCase() == roleType)
              .toList();

          Future.delayed(Duration.zero).then(
            (value) => agentController.changedAgent(agents[0].id!),
          );

          return PageView.builder(
            onPageChanged: (index) {
              if (agents.length > 0) {
                agentController.changedAgent(agents[index].id!);
              }
            },
            itemCount: agents.length,
            itemBuilder: (context, index) => AgentCard(
              name: agents[index].displayName,
              type: agents[index].roleName,
              image: agents[index].id,
              color: agents[index].color,
              overview: agents[index].description,
              desc1: agents[index].description1,
              desc2: agents[index].description2,
              desc3: agents[index].description3,
              desc4: agents[index].description4,
              icon1: agents[index].displayIcon1,
              icon2: agents[index].displayIcon2,
              icon3: agents[index].displayIcon3,
              icon4: agents[index].displayIcon4,
              displayName1: agents[index].displayName1,
              displayName2: agents[index].displayName2,
              displayName3: agents[index].displayName3,
              displayName4: agents[index].displayName4,
            ),
          );
        },
      ),
    );
  }
}
