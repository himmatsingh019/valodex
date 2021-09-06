import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:valodex/view/maps/widgets/map_widget.dart';

class HavenScreen extends StatelessWidget {
  const HavenScreen({Key? key}) : super(key: key);

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
                          image: AssetImage('assets/png/haven.png'),
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
                                  'HAVEN',
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
                        'Beneath a forgotten monastery, a clamour emerges from rival Agents clashing to control three sites. There’s more territory to control, but defenders can use the extra real estate for aggressive pushes',
                        'Haven\'s \'unique\' feature is that it has an additional third spike site. This does not affect the number of ultimate orbs on the map; Haven\'s two ultimate orbs are present in A Long and C Long (Dragon).')
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
