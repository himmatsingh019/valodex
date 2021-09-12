import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:valodex/pages/weapon/weapon.dart';

class WeaponTile extends StatelessWidget {
  final String name, image, category;
  const WeaponTile(
      {Key? key,
      required this.name,
      required this.image,
      required this.category})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Get.to(
          () => WeaponScreen(gunType: category.toLowerCase()),
        );
      },
      child: Column(
        children: <Widget>[
          Container(
            height: 84,
            width: 150,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(image),
              ),
              borderRadius: BorderRadius.circular(10),
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.2),
                  spreadRadius: 2,
                  blurRadius: 4,
                  offset: Offset(0, 4),
                ),
              ],
              color: Color(0xFFE8E8E8),
            ),
          ),
          SizedBox(height: 6),
          Text(
            name,
            style: const TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w700,
            ),
          ),
        ],
      ),
    );
  }
}
