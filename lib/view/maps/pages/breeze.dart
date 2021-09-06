import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:valodex/view/maps/widgets/map_widget.dart';

class BreezeScreen extends StatelessWidget {
  const BreezeScreen({Key? key}) : super(key: key);

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
                          image: AssetImage('assets/png/breeze.png'),
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
                                  'BREEZE',
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
                        'Take in the sights of historic ruins or seaside caves on this tropical paradise. But bring some cover. You\'ll need them for the wide open spaces and long range engagements. Watch your flanks and this will be a Breeze.',
                        'Breeze\'s \'unique\' features are present on the A side of the map, mostly to do with A Hall. There are ropes to get players into A Hall. On the defending side players can use the rope at the back of A Site to get onto Bridge and into Hall, and on the attacking side players can use the rope in A Lobby to get into Hall.\n\nA Site has an impenetrable, indestructible mechanical door leading into A Hall that can be opened and closed using switches on either side. The door is closed at the start of each round.\n\nTowards the Attacker side of Hall is a one-way chute (known as a \'vent\') that can be used to go to Mid.')
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
