import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MapTile extends StatelessWidget {
  final name, img, map;
  const MapTile({Key? key, this.name, this.img, this.map}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Get.toNamed('/$map');
      },
      child: Container(
        height: 84,
        width: 150,
        decoration: BoxDecoration(
          image: DecorationImage(
            colorFilter: new ColorFilter.mode(
                Colors.white.withOpacity(0.8), BlendMode.dstATop),
            image: AssetImage(img),
          ),
          borderRadius: BorderRadius.circular(20),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.2),
              spreadRadius: 2,
              blurRadius: 4,
              offset: Offset(0, 3),
            ),
          ],
          color: Color(0xFFE8E8E8),
        ),
        child: Center(
          child: Text(
            name,
            style: const TextStyle(
              fontSize: 22,
              fontWeight: FontWeight.w700,
            ),
          ),
        ),
      ),
    );
  }
}
