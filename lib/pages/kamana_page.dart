import 'package:devmanch/widgets/circular_row.dart';
import 'package:flutter/material.dart';

import '../widgets/god_image.dart';

class KamanaPage extends StatelessWidget {
  const KamanaPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.background,
        leading: IconButton(
          onPressed: () {},
          icon: const Icon(Icons.person),
        ),
        title: const Text('Ichaghar'),
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.search),
          ),
        ],
      ),
      body: const Column(
        children: [
          CircularRow(),
          GodImage(),
        ],
      ),
    );
  }
}
