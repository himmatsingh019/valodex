import 'package:flutter/material.dart';

class AbilityCard extends StatelessWidget {
  AbilityCard({Key? key, this.description}) : super(key: key);

  String? description;

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Container(
          height: 150,
          width: 90,
          color: Colors.red,
          child: Center(
              // child: Image.asset(
              //   'assets/png/$ability.png',
              //   height: 60,
              //   width: 70,
              //   color: Colors.white,
              // ),
              ),
        ),
        SizedBox(width: 10),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Text(
              //   name,
              //   style: TextStyle(
              //     fontSize: 16,
              //     fontWeight: FontWeight.bold,
              //   ),
              // ),
              SizedBox(height: 4),
              Text(
                description!,
                style: TextStyle(fontSize: 14),
              )
            ],
          ),
        ),
      ],
    );
  }
}
