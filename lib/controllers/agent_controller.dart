import 'package:get/get.dart';
import 'package:valodex/models/agents_model.dart';
import 'package:valodex/services/agent_service.dart';

class AgentController extends GetxController {
  List<Agent> agents = [];
  Agent? selectedAgent;

  @override
  void onInit() {
    super.onInit();
    getAgents();
  }

  void getAgents() async {
    List<Agent>? _agents = await AgentService.getAgents();

    if (_agents != null) {
      agents = _agents;

      Get.offNamed('/home');
    } else {
      Get.snackbar('Error occured', 'Try again');
    }
  }

  void changedAgent(String id) {
    selectedAgent = agents.firstWhere((element) => element.id == id);
    update();
  }
}
