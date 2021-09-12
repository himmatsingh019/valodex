import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:valodex/models/weapons_model.dart';

class WeaponCard extends StatelessWidget {
  const WeaponCard({Key? key, required this.weapon}) : super(key: key);
  final Weapon weapon;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 36.0),
          child: Image.network(
            weapon.image!,
            height: 120,
          ),
        ),
        SizedBox(height: 30),
        Container(
          height: 36,
          width: 110,
          decoration: BoxDecoration(
            color: Colors.white70,
            borderRadius: BorderRadius.circular(6),
          ),
          child: Center(
            child: Text(
              weapon.category!,
              style: TextStyle(
                fontSize: 16,
                letterSpacing: 2,
              ),
            ),
          ),
        ),
        SizedBox(height: 50),
        Text(
          weapon.displayName!,
          style: TextStyle(
            fontSize: 22,
            letterSpacing: 3,
            fontWeight: FontWeight.bold,
          ),
        ),
      ],
    );
  }
}
