import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:valodex/view/agent/widgets/tab.dart';

class InitiatorScreen extends StatelessWidget {
  const InitiatorScreen({Key? key}) : super(key: key);

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
              backgroundColor: Color(0xFF8AFF53),
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
                        color: Color(0xFF8AFF53),
                        child: Stack(
                          children: [
                            Align(
                              alignment: Alignment.centerRight,
                              child: Image.asset(
                                'assets/png/skye/skye.png',
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
                                  'Skye',
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
                                      'Initiator',
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
                            'EQUIP a healing trinket. HOLD FIRE to channel, healing allies in range and line of sight. Can be reused until her healing pool is depleted. Skye cannot heal herself.',
                        desc2:
                            'EQUIP a Tasmanian tiger trinket. FIRE to send out and take control of the predator. While in control, FIRE to leap forward, exploding in a concussive blast and damaging directly hit enemies.',
                        desc3:
                            'EQUIP a hawk trinket. FIRE to send it forward. RE-USE while the hawk is in flight to transform it into a flash that plays a hit confirm if an enemy was within range and line of sight.',
                        desc4:
                            'EQUIP a Seeker trinket. FIRE to send out three Seekers to track down the three closest enemies. If a Seeker reaches its target, it nearsights them.',
                        img1: 'skye/regrowth',
                        img2: 'skye/trailblazer',
                        img3: 'skye/light',
                        img4: 'skye/seekers',
                        about:
                            'The character, a more passive agent with a penchant for nature and non-human companions, can summon birds for scouting and even a dog you can embody and scour the map with to perform reconnaissance and stun opponents.\n\nSkye is an initiator Agent in Valorant. While there are already a few in the game, Skye is the first new addition since the game started. Initiators work well with aggressive players, but it doesn’t mean she is simple to play.\n\nSkye requires good map knowledge, along with good knowledge of tactics. Skye’s abilities are perfect for pushing forward, but they need to be used tactically.',
                        strategies:
                            'When using Blade Storm, remember that you can always keep moving as the blades are fully accurate at all times.'
                            '\n\nUsing Updraft can get you to higher ground and get some easy kills against opponents who don\'t expect you to be on an off angle.',
                        ab1: 'REGROWTH',
                        ab2: 'TRAILBLAZER',
                        ab3: 'GUIDING LIGHT',
                        ab4: 'SEEKERS',
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
