import 'package:dio/dio.dart';
import 'package:get/instance_manager.dart';
import 'package:valodex/models/agents_model.dart';
import 'package:valodex/services/dio.dart';
import 'package:valodex/utils/constant.dart';

class AgentService {
  static Dio client = Get.find<DioBaseService>().dioClient;

  static Future<List<Agent>?> getAgents() async {
    Response response = await client.get(agentsJsonURL);

    if (response.statusCode == 200) {
      return agentFromJson(response.data);
    }
    return null;
  }
}
