import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:valodex/view/maps/widgets/map_widget.dart';

class AscentScreen extends StatelessWidget {
  const AscentScreen({Key? key}) : super(key: key);

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
                          image: AssetImage('assets/png/accent.png'),
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
                                  'ASCENT',
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
                        'An open playground for small wars of position and attrition divide two sites on Ascent. Each site can be fortified by irreversible bomb doors; once they’re down, you’ll have to destroy them or find another way. Yield as little territory as possible.',
                        'Ascent is a map set in Italy that features a large, open middle area that both teams can skirmish over. Mid is a playground for diverse ability use and successfully controlling the area opens additional routes for Attackers to both Spike sites.\n\nThe map\'s \'unique\' feature is mechanical doors leading into sites. Each site has one door (A Link for A and Market for B) that is opened at the start of each round. ')
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
