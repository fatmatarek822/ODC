
import 'package:flutter/material.dart';

Widget OrangeText () => Row(
  mainAxisAlignment: MainAxisAlignment.center,
  children: [
    Text(
      'Orange ',
      style: TextStyle(
          color: Colors.orange,
          fontWeight: FontWeight.bold,
          fontSize: 25),
    ),
    Text(
      'Digital Center',
      style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
    ),
  ],
);
