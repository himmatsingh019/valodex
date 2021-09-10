import 'package:flutter/material.dart';
import 'package:get/state_manager.dart';
import 'package:valodex/controllers/agent_controller.dart';
import 'package:get/get.dart';
import 'package:valodex/models/agents_model.dart';
import 'package:valodex/view/agent/widgets/agent_card.dart';
import 'package:valodex/view/agent/widgets/detail_card.dart';

class AgentScreen2 extends StatelessWidget {
  final String roleType;
  final AgentController agentController = Get.find();
  AgentScreen2({Key? key, required this.roleType}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            height: 500,
            child: Builder(
              builder: (context) {
                List<Agent> agents = agentController.agents
                    .where((element) =>
                        element.roleName!.toLowerCase() == roleType)
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
                    data: agents[index].description,
                  ),
                );
              },
            ),
          ),
          // GetBuilder<AgentController>(builder: (controller) {
          //   return Expanded(
          //     child: DetailCard(
          //       about: controller.selectedAgent!.description,
          //     ),
          //   );
          // }),
        ],
      ),
    );
  }
}
