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

          return PageView.builder(
            itemCount: agents.length,
            itemBuilder: (context, index) => AgentCard(
              agent: agents[index],
              color: agents[index].color,
            ),
          );
        },
      ),
    );
  }
}
