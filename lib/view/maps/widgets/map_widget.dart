import 'package:flutter/material.dart';

Widget card(overview, features) {
  return Padding(
    padding: const EdgeInsets.only(left: 16.0, right: 14, bottom: 10),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          '// OVERVIEW',
          style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
        ),
        SizedBox(height: 8),
        Text(overview),
        SizedBox(height: 16),
        Text(
          '// MAP FEATURES',
          style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
        ),
        SizedBox(height: 8),
        Text(features)
      ],
    ),
  );
}
