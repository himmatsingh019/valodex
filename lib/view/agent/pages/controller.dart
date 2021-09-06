import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:get/state_manager.dart';
import 'package:valodex/controllers/agent_controller.dart';
import 'package:get/get.dart';
import 'package:valodex/view/agent/widgets/character.dart';

class ControllerScreen extends StatefulWidget {
  ControllerScreen({Key? key}) : super(key: key);

  @override
  _ControllerScreenState createState() => _ControllerScreenState();
}

class _ControllerScreenState extends State<ControllerScreen> {
  final agentController = Get.put(AgentController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: DefaultTabController(
          length: 2,
          child: Column(
            children: [
              Container(
                height: 400,
                child: GetBuilder<AgentController>(
                  builder: (controller) => PageView(
                      children: controller.agents
                          .map((e) => AgentCard(
                                name: e.displayName,
                                type: e.roleName,
                                image: e.id,
                                color: e.color,
                              ))
                          .toList(),
                      onPageChanged: (index) {
                        agentController.pageChanged();

                        print(index);
                      }),
                ),
              ),
              Expanded(
                  child: PageView(
                controller: PageController(),
                children: agentController.agents
                    .map((e) => DetailCard(
                          about: e.description,
                        ))
                    .toList(),
              )),

              // Container(
              //   color: Colors.red,
              //   child: TabBar(
              //     labelColor: Colors.black,
              //     indicatorColor: Colors.yellowAccent,
              //     indicatorSize: TabBarIndicatorSize.label,
              //     tabs: [
              //       Tab(
              //         text: 'About',
              //       ),
              //       Tab(
              //         text: 'Abilities',
              //       ),
              //     ],
              //   ),
              // ),
              // Expanded(
              //   child: TabBarView(
              //     children: [
              //       Container(
              //         height: 100,
              //         color: Colors.grey,
              //         child: Text(''),
              //       ),
              //       Container(
              //         height: 100,
              //         color: Colors.grey,
              //       ),
              //     ],
              //   ),
              // ),
            ],
          ),
        ),
      ),
    );
  }
}
