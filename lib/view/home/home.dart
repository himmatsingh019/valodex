import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:valodex/view/widgets/agent_tile.dart';
import 'package:valodex/view/widgets/map_tile.dart';
import 'package:valodex/view/widgets/weapon_tile.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          padding: EdgeInsets.only(left: 16, right: 16, top: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                'Which Valorant \ncharacter are you looking for?',
                style:
                    const TextStyle(fontSize: 20, fontWeight: FontWeight.w700),
              ),
              SizedBox(height: 16),
              Container(
                height: 50,
                width: Get.width,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Color(0xFFE2E2E2),
                ),
                child: TextField(
                  decoration: const InputDecoration(
                    border: InputBorder.none,
                    prefixIcon: Icon(Icons.search_outlined),
                    hintText: 'Search character, maps, weapons',
                  ),
                ),
              ),
              SizedBox(height: 40),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  AgentTile(
                    name: 'Initiators',
                    role: 'Initiator',
                  ),
                  AgentTile(
                    name: 'Sentinels',
                    role: 'Sentinel',
                  ),
                ],
              ),
              SizedBox(height: 30),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  AgentTile(
                    name: 'Duelists',
                    role: 'Duelist',
                  ),
                  AgentTile(
                    name: 'Controllers',
                    role: 'Controller',
                  ),
                ],
              ),
              SizedBox(height: 20),
              Divider(
                color: Colors.black,
                thickness: 1,
              ),
              SizedBox(height: 10),
              Text(
                'Maps',
                style: const TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 30),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  MapTile(
                      name: 'Ascent',
                      img: 'assets/png/accent.png',
                      map: 'ascent'),
                  MapTile(
                      name: 'Bind', img: 'assets/png/bind.png', map: 'bind'),
                ],
              ),
              SizedBox(height: 30),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  MapTile(
                      name: 'Breeze',
                      img: 'assets/png/breeze.png',
                      map: 'breeze'),
                  MapTile(
                      name: 'Haven', img: 'assets/png/haven.png', map: 'haven'),
                ],
              ),
              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  MapTile(
                      name: 'Icebox',
                      img: 'assets/png/icebox.png',
                      map: 'icebox'),
                  MapTile(
                      name: 'Split', img: 'assets/png/split.png', map: 'split'),
                ],
              ),
              SizedBox(height: 20),
              Divider(
                color: Colors.black,
                thickness: 1,
              ),
              SizedBox(height: 6),
              Text(
                'Weapons',
                style: const TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 30),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  WeaponTile(name: 'Sidearms', img: 'assets/png/classic.png'),
                  WeaponTile(name: 'Primary', img: 'assets/png/stinger.png'),
                ],
              ),
              SizedBox(height: 30),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  WeaponTile(name: 'Shotguns', img: 'assets/png/judge.png'),
                  WeaponTile(name: 'Rifles', img: 'assets/png/vandal.png'),
                ],
              ),
              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  WeaponTile(name: 'Snipers', img: 'assets/png/operator.png'),
                  WeaponTile(name: 'Melee', img: 'assets/png/knife.png'),
                ],
              ),
              SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }
}
