import 'package:devmanch/widgets/ghantis.dart';
import 'package:devmanch/widgets/icon_row.dart';
import 'package:flutter/material.dart';

class GodImage extends StatelessWidget {
  const GodImage({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Stack(
        children: [
          SizedBox(
            width: MediaQuery.of(context).size.width,
            child: Image.asset(
              'assets/animations/1.gif',
              fit: BoxFit.fitWidth,
            ),
          ),
          Column(
            children: [
              ghantis(),
              SizedBox(height: MediaQuery.of(context).size.height * 0.03),
              const IconRow(
                  firstLocation: 'assets/images/homepage/flowers.png',
                  secondLocation: 'assets/images/homepage/shunk.png'),
              SizedBox(height: MediaQuery.of(context).size.height * 0.03),
              const IconRow(
                  firstLocation: 'assets/images/homepage/oilbottle.png',
                  secondLocation: 'assets/images/homepage/calendar.png'),
              SizedBox(height: MediaQuery.of(context).size.height * 0.03),
              const IconRow(
                  firstLocation: 'assets/images/homepage/agarbatti.png',
                  secondLocation: 'assets/images/homepage/praying.png'),
              SizedBox(height: MediaQuery.of(context).size.height * 0.03),
              const IconRow(
                  firstLocation: 'assets/images/homepage/diya.png',
                  secondLocation: 'assets/images/homepage/youtube.png'),
              SizedBox(height: MediaQuery.of(context).size.height * 0.03),
              CircleAvatar(
                radius: MediaQuery.of(context).size.width * 0.1,
                backgroundColor: Colors.white,
                child: Icon(
                  Icons.mic,
                  size: MediaQuery.of(context).size.width * 0.1,
                  color: Colors.black,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
