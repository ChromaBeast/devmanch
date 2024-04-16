import 'package:devmanch/pages/connect_page.dart';
import 'package:devmanch/pages/kamana_page.dart';
import 'package:devmanch/pages/mantra_page.dart';
import 'package:devmanch/pages/puja_page.dart';
import 'package:devmanch/pages/vedic_page.dart';
import 'package:flutter/material.dart';

class NavigationPage extends StatefulWidget {
  const NavigationPage({Key? key}) : super(key: key);

  @override
  State<NavigationPage> createState() => _NavigationPageState();
}

class _NavigationPageState extends State<NavigationPage> {
  int _currentIndex = 2; // Track the current tab index
  final List<Widget> _tabs = const [
    PujaPage(),
    VedicPage(),
    KamanaPage(),
    MantraPage(),
    ConnectPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _tabs[_currentIndex], // Display the selected tab
      bottomNavigationBar: NavigationBar(
        animationDuration: const Duration(milliseconds: 200),
        backgroundColor: Colors.black,
        indicatorColor: const Color(0xFFDE8411),
        selectedIndex: _currentIndex,
        onDestinationSelected: (int index) {
          setState(() {
            _currentIndex = index; // Update the current index
          });
        },
        destinations: const [
          NavigationDestination(
              icon: ImageIcon(AssetImage('assets/images/homepage/vedic.png')),
              label: 'Pooja'),
          NavigationDestination(
              icon: ImageIcon(AssetImage('assets/images/homepage/om.png')),
              label: 'Vedic'),
          NavigationDestination(
              icon: ImageIcon(AssetImage('assets/images/homepage/pray.png')),
              label: 'Kamana'),
          NavigationDestination(
              icon: ImageIcon(AssetImage('assets/images/homepage/mantra.png')),
              label: 'Mantra'),
          NavigationDestination(icon: Icon(Icons.person_add), label: 'Connect'),
        ],
      ),
    );
  }
}
