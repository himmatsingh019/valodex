import 'package:flutter/material.dart';

class WeaponTile extends StatelessWidget {
  final name, img;
  const WeaponTile({Key? key, this.name, this.img}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Column(
        children: <Widget>[
          Container(
            height: 84,
            width: 150,
            decoration: BoxDecoration(
              image: DecorationImage(
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
