import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:valodex/view/maps/widgets/map_widget.dart';

class SplitScreen extends StatelessWidget {
  const SplitScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            snap: false,
            pinned: false,
            toolbarHeight: 50,
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
                          image: AssetImage('assets/png/split.png'),
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
                                  'SPLIT',
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
                        'If you want to go far, you’ll have to go up. A pair of sites split by an elevated center allows for rapid movement using two rope ascenders. Each site is built with a looming tower vital for control. Remember to watch above before it all blows sky-high.',
                        'Split was the first map to use ascenders. There are three sets on the map:\n\n . Two that allow players to get up from Sewer to A Lobby\n. One that allows players to get up from B Hell to B Tower\n. Four that allow players to navigate through Vents')
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
