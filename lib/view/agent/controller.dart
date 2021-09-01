import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:valodex/view/agent/widgets/tab.dart';

class ControllerScreen extends StatelessWidget {
  const ControllerScreen({Key? key}) : super(key: key);

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
              backgroundColor: Color(0xFF4A5E76),
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
                        color: Color(0xFF4A5E76),
                        child: Stack(
                          children: [
                            Align(
                              alignment: Alignment.centerRight,
                              child: Image.asset(
                                'assets/png/omen/omen.png',
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
                                  'Omen',
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
                                      'Controller',
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
                        desc1:
                            'EQUIP a shrouded step ability and see its range indicator. FIRE to begin a brief channel, then teleport to the marked location.',
                        desc2:
                            'EQUIP a blinding orb. FIRE to throw it forward, briefly reducing the vision range and deafening all players it touches. This projectile can pass through walls.',
                        desc3:
                            'EQUIP a shadow orb, entering a phased world to place and target the orbs. PRESS the ability key to throw the shadow orb to the marked location, creating a long-lasting shadow sphere that blocks vision.',
                        desc4:
                            'EQUIP a tactical map. FIRE to begin teleporting to the selected location. While teleporting, Omen will appear as a Shade that can be destroyed by an enemy to cancel his teleport, or press EQUIP for Omen to cancel.',
                        img1: 'omen/shroud',
                        img2: 'omen/para',
                        img3: 'omen/dark',
                        img4: 'omen/shadow',
                        about:
                            'A man with mysterious origins, Omen is focused on hindering the vision of his enemies with things like an orb that strikes those in his sights with nearsightedness and another that bursts to obscure the vision of everyone nearby. He can also teleport a short distance, or use his ultimate to teleport anywhere on the map as a shadow\n\nOmen is the most notorious agent on the Valorant roster, has a kit that is jam-packed with utility that supports the team while simultaneously lending itself for massive individual achievement.',
                        strategies:
                            'When using Blade Storm, remember that you can always keep moving as the blades are fully accurate at all times.'
                            '\n\nUsing Updraft can get you to higher ground and get some easy kills against opponents who don\'t expect you to be on an off angle.',
                        ab1: 'SHROUDED STEP',
                        ab2: 'PARANOIA',
                        ab3: 'DARK COVER',
                        ab4: 'FROM THE SHADOWS',
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
