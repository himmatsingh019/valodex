import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AgentTile extends StatelessWidget {
  final name, screen;
  const AgentTile({Key? key, this.name, this.screen}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Get.toNamed('/$screen');
      },
      child: Container(
        height: 90,
        width: 150,
        decoration: BoxDecoration(
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
        child: Stack(
          children: [
            Opacity(
              opacity: 0.5,
              child: Center(
                child: Image.asset(
                  'assets/png/logo.png',
                  height: 30,
                  width: 40,
                ),
              ),
            ),
            Center(
              child: Text(
                name,
                style: const TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
