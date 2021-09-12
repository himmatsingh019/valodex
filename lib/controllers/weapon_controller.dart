import 'package:get/get.dart';
import 'package:valodex/models/weapons_model.dart';
import 'package:valodex/services/weapon_service.dart';

class WeaponController extends GetxController {
  List<Weapon> weapons = [];
  Weapon? selectedGun;

  @override
  void onInit() {
    super.onInit();
    getWeapon();
  }

  void getWeapon() async {
    List<Weapon>? _weapons = await WeaponService.getWeapons();

    if (_weapons != null) {
      weapons = _weapons;
      selectedGun = weapons[0];
      update();
    } else {
      Get.snackbar('Error occured', 'Try again');
    }
  }

  void changedGun(String id) {
    selectedGun = weapons.firstWhere((element) => element.id == id);
    update();
  }
}
