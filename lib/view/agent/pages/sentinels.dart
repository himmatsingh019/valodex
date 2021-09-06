import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:valodex/view/agent/widgets/tab.dart';

class SentinelScreen extends StatelessWidget {
  const SentinelScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: CustomScrollView(
          slivers: <Widget>[
            SliverAppBar(
              snap: false,
              pinned: false,
              floating: false,
              backgroundColor: Color(0xFFFFDC60),
              leading: IconButton(
                onPressed: () {
                  Get.back();
                },
                icon: Icon(Icons.arrow_back),
              ),
              iconTheme: IconThemeData(color: Colors.black),
            ),
            SliverList(
              delegate: SliverChildListDelegate(
                [
                  Column(
                    children: <Widget>[
                      Container(
                        padding: EdgeInsets.symmetric(horizontal: 16),
                        height: 300,
                        color: Color(0xFFFFDC60),
                        child: Stack(
                          children: [
                            Align(
                              alignment: Alignment.centerRight,
                              child: Image.asset(
                                'assets/png/kj.png',
                                height: 250,
                                width: 200,
                              ),
                            ),
                            Column(
                              children: <Widget>[
                                SizedBox(height: 50),
                                Image.asset(
                                  'assets/png/logo.png',
                                  height: 80,
                                  width: 80,
                                ),
                                SizedBox(height: 20),
                                Text(
                                  'Killjoy',
                                  style: TextStyle(
                                    fontSize: 24,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                SizedBox(height: 18),
                                Container(
                                  height: 24,
                                  width: 90,
                                  decoration: BoxDecoration(
                                    color: Colors.white54,
                                    borderRadius: BorderRadius.circular(20),
                                  ),
                                  child: Center(
                                    child: Text(
                                      'Sentinel',
                                      style: TextStyle(
                                        fontSize: 14,
                                        fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      CustomTabBar(
                        img1: 'nano',
                        img2: 'alarm',
                        img3: 'turret',
                        img4: 'lockdown',
                        desc1:
                            'EQUIP a Nanoswarm grenade.\nFIRE to throw the grenade. Upon\nlanding, the Nanoswarm goes\ncovert. ACTIVATE the Nanoswarm\nto deploy a damaging swarm of\nnanobots.',
                        desc2:
                            'EQUIP a covert Alarmbot.\nFIRE to deploy a bot that hunts\ndown enemies that get in\nrange. After reaching its target,\nthe bot explodes and applies\nVulnerable to enemies in the area.',
                        desc3:
                            'EQUIP a Turret. FIRE to deploy a\nturret that automatically fires\nat enemies in a 180 degree\n cone. HOLD EQUIP to recall the\ndeployed turret.',
                        desc4:
                            'EQUIP the Lockdown device.\nFIRE to deploy the device.\nAfter a long windup, the device\nDetains all enemies caught in\nthe radius. The device can be\ndestroyed by enemies.',
                        about:
                            'Killjoy is a young German woman with slick dark brown hair and brown eyes. She is often seen wearing a padded yellow jacket with a blue interior, purple "X" patches on either shoulder and a green beanie-like hat. Underneath the jacket she wears a gray shirt with a rising bars graphic. She has round glasses with black outlines, a pair of silver hoop earrings in either ear, and a pair of green shoes that resemble Converse Chuck Taylor\'s with silver toes and loose tongues. Covering her hands are a pair of black gloves with blue straps that exposes her ring and pinkie fingers. She wears black ripped skinny jeans with a green strap on her left thigh which is also connected to a fanny pack.',
                        strategies:
                            'Pay attention to positioning and what utility the enemy has available before you place a Lockdown device. Enemies can use damaging utility, such as Shock Bolts and Paint Shells, to destroy it and can achieve this even easier without caring about where the device is positioned by using ultimates such as Orbital Strike and Hunter\'s Fury to hit it wherever it may be. Some spots may also be vulnerable to enemies shooting the device through a wall with medium or high-penetration guns.',
                        ab1: 'NANOSWARM',
                        ab2: 'ALARMBOT',
                        ab3: 'TURRET',
                        ab4: 'LOCKDOWN',
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
