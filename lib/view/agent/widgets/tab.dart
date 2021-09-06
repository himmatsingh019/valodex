import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:valodex/view/agent/widgets/abilities.dart';

class CustomTabBar extends StatefulWidget {
  final about,
      strategies,
      ab1,
      ab2,
      ab3,
      ab4,
      img1,
      img2,
      img3,
      img4,
      desc1,
      desc2,
      desc3,
      desc4;
  const CustomTabBar({
    Key? key,
    this.about,
    this.strategies,
    this.ab1,
    this.ab2,
    this.ab3,
    this.ab4,
    this.img1,
    this.img2,
    this.img3,
    this.img4,
    this.desc1,
    this.desc2,
    this.desc3,
    this.desc4,
  }) : super(key: key);

  @override
  _CustomTabBarState createState() => _CustomTabBarState();
}

class _CustomTabBarState extends State<CustomTabBar> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Container(
        height: Get.height,
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.transparent,
            elevation: 0,
            automaticallyImplyLeading: false,
            toolbarHeight: 50,
            bottom: TabBar(
              labelColor: Colors.black,
              indicatorColor: Colors.yellowAccent,
              indicatorSize: TabBarIndicatorSize.label,
              tabs: [
                Tab(text: 'About'),
                Tab(text: 'Abilities'),
              ],
            ),
          ),
          body: Padding(
            padding: const EdgeInsets.only(top: 8.0, left: 18, right: 18),
            child: TabBarView(
              children: [
                Text(
                  widget.about,
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    // abilities(widget.ab1, widget.desc1, widget.img1),
                    // abilities(widget.ab2, widget.desc2, widget.img2),
                    // abilities(widget.ab3, widget.desc3, widget.img3),
                    // abilities(widget.ab4, widget.desc4, widget.img4),
                    SizedBox(height: 6)
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
