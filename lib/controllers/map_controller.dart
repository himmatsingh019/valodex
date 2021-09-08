import 'package:get/get.dart';
import 'package:valodex/models/maps_model.dart';
import 'package:valodex/services/maps_service.dart';

class MapController extends GetxController {
  List<Maps> maps = [];

  @override
  void onInit() {
    super.onInit();
    getMaps();
  }

  void getMaps() async {
    List<Maps>? _maps = await MapService.getMaps();

    if (_maps != null) {
      maps = _maps;
      update();
    } else {
      Get.snackbar('Error occured', 'Try again');
    }
  }
}
