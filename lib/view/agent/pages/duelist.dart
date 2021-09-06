import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:valodex/view/agent/widgets/tab.dart';

class DuelistScreen extends StatelessWidget {
  const DuelistScreen({Key? key}) : super(key: key);

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
              backgroundColor: Color(0xFF6CE5FF),
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
                        color: Color(0xFF6CE5FF),
                        child: Stack(
                          children: [
                            Align(
                              alignment: Alignment.centerRight,
                              child: Image.asset(
                                'assets/png/jett/jett.png',
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
                                  'Jett',
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
                                      'Duelist',
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
                        desc1: 'INSTANTLY propel Jett high into the air.',
                        desc2:
                            'INSTANTLY throw a projectile that expands into a brief vision-blocking cloud on impact with a surface. HOLD the ability key to curve the smoke in the direction of your crosshair.',
                        desc3:
                            'INSTANTLY propel Jett in the direction she is moving. If Jett is standing still, she will propel forward.',
                        desc4:
                            'EQUIP a set of highly accurate throwing knives that recharge on killing an opponent. FIRE to throw a single knife at your target. ALTERNATE FIRE to throw all remaining daggers at your target.',
                        img1: 'jett/updraft',
                        img2: 'jett/cloud',
                        img3: 'jett/tail',
                        img4: 'jett/blade',
                        about:
                            'From Korea comes Jett, an agile fighter who prioritizes movement over everything. Her abilities include a teleportation-based dash and an updraft that lets her reach higher ledges. She also has a smokebomb ability to hinder sightlines and a powerful Bladestorm ultimate that deals moderate-to-heavy damage and remains accurate even while she\'s moving.'
                            '\n\nJett is one of the few Agents with a passive ability. Holding the jump key while in the air will allow Jett to slow her descent.'
                            '\n\nJett\'s Ultimate allows her to wield several throwing knives that deal moderate damage and kill on headshots. Getting a kill replenishes your daggers and you can choose to throw them one at a time or throw all remaining daggers in a short-ranged burst.',
                        strategies:
                            'When using Blade Storm, remember that you can always keep moving as the blades are fully accurate at all times.'
                            '\n\nUsing Updraft can get you to higher ground and get some easy kills against opponents who don\'t expect you to be on an off angle.',
                        ab1: 'UPDRAFT',
                        ab2: 'CLOUD BURST',
                        ab3: 'TAILWIND',
                        ab4: 'BLADE STORM',
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
