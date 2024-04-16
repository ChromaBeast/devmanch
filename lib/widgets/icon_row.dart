import 'package:flutter/material.dart';

import 'iconbtn.dart';

class IconRow extends StatelessWidget {
  final String firstLocation;
  final String secondLocation;
  const IconRow(
      {super.key, required this.firstLocation, required this.secondLocation});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          IconBtn(imagelocation: firstLocation),
          IconBtn(imagelocation: secondLocation),
        ],
      ),
    );
  }
}
