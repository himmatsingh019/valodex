import 'package:get/get.dart';
import 'package:valodex/models/agents_model.dart';
import 'package:valodex/services/agent_service.dart';

class AgentController extends GetxController {
  List<Agent> agents = [];
  var currentPageIndex = 0.obs;

  @override
  void onInit() {
    super.onInit();
    getAgents();
  }

  void getAgents() async {
    List<Agent>? _agents = await AgentService.getAgents();

    if (_agents != null) {
      agents = _agents;
      update();
    } else {
      Get.snackbar('Error occured', 'Try again');
    }
  }

  pageChanged() {
    currentPageIndex++;
    update();
    return currentPageIndex;
  }
}
