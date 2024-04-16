import 'package:flutter/material.dart';

class CircularRow extends StatelessWidget {
  const CircularRow({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(5),
      height: MediaQuery.of(context).size.height * 0.08,
      child: Row(
        children: [
          Expanded(
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                IconButton(onPressed: () {}, icon: const Icon(Icons.add)),
                ListView.builder(
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  itemCount: 10,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.all(2.0),
                      child: CircleAvatar(
                        radius: MediaQuery.of(context).size.width * 0.05,
                        backgroundImage:
                            AssetImage('assets/images/gods/$index.png'),
                      ),
                    );
                  },
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
