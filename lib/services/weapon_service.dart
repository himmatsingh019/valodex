import 'package:dio/dio.dart';
import 'package:get/instance_manager.dart';
import 'package:valodex/models/weapons_model.dart';
import 'package:valodex/services/dio.dart';
import 'package:valodex/utils/constant.dart';

class WeaponService {
  static Dio client = Get.find<DioBaseService>().dioClient;

  static Future<List<Weapon>?> getWeapons() async {
    Response response = await client.get(weaponsURL);

    if (response.statusCode == 200) {
      return weaponFromJson(response.data);
    }
    return null;
  }
}
