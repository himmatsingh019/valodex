import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:valodex/controllers/weapon_controller.dart';
import 'package:valodex/models/weapons_model.dart';
import 'package:valodex/pages/weapon/widgets/weapon_card.dart';

class WeaponScreen extends StatelessWidget {
  WeaponScreen({Key? key, required this.gunType}) : super(key: key);

  final String gunType;
  final WeaponController weaponController = Get.find();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFF274774),
        elevation: 0,
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 20.0),
            child: IconButton(
              icon: Icon(Icons.favorite_border_outlined),
              onPressed: () {},
              color: Colors.black,
            ),
          )
        ],
      ),
      body: Stack(
        children: [
          Builder(builder: (context) {
            List<Weapon> weapons = weaponController.weapons
                .where((element) => element.category!.toLowerCase() == gunType)
                .toList();

            Future.delayed(Duration.zero).then(
              (value) => weaponController.changedGun(weapons[0].id!),
            );

            return Container(
              height: Get.height * 0.4,
              color: Color(0xFF274774),
              child: PageView.builder(
                onPageChanged: (index) {
                  if (weapons.length > 0) {
                    weaponController.changedGun(weapons[index].id!);
                  }
                },
                itemCount: weapons.length,
                itemBuilder: (context, index) {
                  return WeaponCard(
                    weapon: weapons[index],
                  );
                },
              ),
            );
          }),
          GetBuilder<WeaponController>(builder: (controller) {
            return WeaponSheet(weapon: controller.selectedGun!);
          }),
        ],
      ),
    );
  }
}

class WeaponSheet extends StatelessWidget {
  const WeaponSheet({
    Key? key,
    required this.weapon,
  }) : super(key: key);

  final Weapon weapon;
  @override
  Widget build(BuildContext context) {
    return DraggableScrollableSheet(
      initialChildSize: 0.6,
      maxChildSize: 0.6,
      minChildSize: 0.6,
      builder: (context, scrollController) {
        return SingleChildScrollView(
          controller: scrollController,
          child: Container(
            padding: EdgeInsets.only(left: 20, top: 20, right: 20),
            height: 600,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(24),
                topRight: Radius.circular(24),
              ),
              color: Colors.white,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                DataTable(
                  columns: [
                    DataColumn(
                      label: Text(
                        'Ranges',
                        style: TextStyle(fontSize: 16),
                      ),
                    ),
                    DataColumn(
                      label: Text(
                        'Head',
                        style: TextStyle(fontSize: 16),
                      ),
                    ),
                    DataColumn(
                      label: Text(
                        'Body',
                        style: TextStyle(fontSize: 16),
                      ),
                    ),
                    DataColumn(
                      label: Text(
                        'Leg',
                        style: TextStyle(fontSize: 16),
                      ),
                    ),
                  ],
                  rows: weapon.damageRanges!
                      .map((e) => DataRow(
                            cells: [
                              DataCell(Text(
                                  '${e.rangeStartMeters}-${e.rangeEndMeters} m')),
                              DataCell(Text(e.headDamage.toString())),
                              DataCell(Text(e.bodyDamage.toString())),
                              DataCell(
                                  Text(e.legDamage!.ceilToDouble().toString())),
                            ],
                          ))
                      .toList(),
                ),
                SizedBox(height: 18),
                Column(
                  children: <Widget>[
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('Creds', textScaleFactor: 1.2),
                        Text(
                          weapon.cost.toString(),
                          textScaleFactor: 1.2,
                          style: TextStyle(
                            color: Color(0xFF959595),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 14),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('Fire Rate', textScaleFactor: 1.2),
                        Text(
                          '${weapon.fireRate}s',
                          textScaleFactor: 1.2,
                          style: TextStyle(
                            color: Color(0xFF959595),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 14),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('Equip Time', textScaleFactor: 1.2),
                        Text(
                          '${weapon.equipTimeSeconds}s',
                          textScaleFactor: 1.2,
                          style: TextStyle(
                            color: Color(0xFF959595),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 14),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('Reload Time', textScaleFactor: 1.2),
                        Text(
                          '${weapon.reloadTimeSeconds}s',
                          textScaleFactor: 1.2,
                          style: TextStyle(
                            color: Color(0xFF959595),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 14),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('Magazine Size', textScaleFactor: 1.2),
                        Text(
                          weapon.magazineSize.toString(),
                          textScaleFactor: 1.2,
                          style: TextStyle(
                            color: Color(0xFF959595),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 14),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('Wall Penetration', textScaleFactor: 1.2),
                        Text(
                          weapon.wallPenetration!,
                          textScaleFactor: 1.2,
                          style: TextStyle(
                            color: Color(0xFF959595),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
        );
      },
    );
    // : Center(
    //     child: Text('No data available'),
    //   );
  }
}
