import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:valodex/view/maps/widgets/map_widget.dart';

class BindScreen extends StatelessWidget {
  const BindScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            snap: false,
            pinned: false,
            floating: false,
            elevation: 0,
            backgroundColor: Colors.white,
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
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage('assets/png/bind.png'),
                        ),
                      ),
                      padding: EdgeInsets.symmetric(horizontal: 16),
                      height: 230,
                      child: Stack(
                        children: [
                          Positioned(
                            bottom: 20,
                            right: 2,
                            child: Container(
                              width: 90,
                              height: 40,
                              decoration: BoxDecoration(
                                color: Color(0xFFF1F1F1),
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: Center(
                                child: Text(
                                  'BIND',
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    letterSpacing: 3,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 16),
                    card(
                        'Two sites. No middle. Gotta pick left or right. What’s it going to be then? Both offer direct paths for attackers and a pair of one-way teleporters make it easier to flank',
                        'Bind\'s \'unique\' feature is that it doesn\'t contain a mid section, instead having two one-way teleporters. One takes players from A Short to B Short and the other takes players from B Long to A Lobby.Players use teleporters by walking into the section of wall taken up by the teleport entrance. They will then instantly arrive in a small exit room which players leave by walking towards the door out of the room. This door is closed by default and can only be opened by players inside the exit room walking up to it, at which point they will open automatically. Players outside the exit room cannot open these doors, but they can be penetrated by gunfire. ')
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
