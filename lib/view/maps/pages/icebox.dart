import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:valodex/view/maps/widgets/map_widget.dart';

class IceboxScreen extends StatelessWidget {
  const IceboxScreen({Key? key}) : super(key: key);

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
                          image: AssetImage('assets/png/icebox.png'),
                        ),
                      ),
                      padding: EdgeInsets.symmetric(horizontal: 16),
                      height: 220,
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
                                  'ICEBOX',
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
                        'Your next battleground is a secret Kingdom excavation site overtaken by the arctic. The two plant sites protected by snow and metal require some horizontal finesse. Take advantage of the ziplines and they’ll never see you coming.',
                        'Icebox is the first map to introduce horizontal ziplines, seen at the A Site. Each Icebox site is a complex combat space that features plenty of cover and verticality. This map emphasizes skirmishes, sharp aim, and adaptive play.\n\nIt is also the first map where the plant site has different levels of elevation. Both sites contain nests that players can get into using ropes and then plant the spike on the nest floor.')
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
