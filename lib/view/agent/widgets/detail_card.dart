import 'package:flutter/material.dart';
import 'package:get/get.dart';

class DetailCard extends StatelessWidget {
  final about;
  DetailCard({Key? key, this.about}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(about);
  }
}
