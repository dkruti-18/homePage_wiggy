import 'package:flutter/material.dart';
import 'package:wegii/screens/commuter.dart';
import 'package:wegii/screens/homePage.dart';
import 'package:wegii/screens/messages.dart';
import 'package:wegii/screens/notificatiions.dart';
import 'package:wegii/screens/products.dart';

class BtmNavBar extends StatefulWidget {
  const BtmNavBar({Key? key}) : super(key: key);

  @override
  State<BtmNavBar> createState() => _BtmNavBarState();
}

class _BtmNavBarState extends State<BtmNavBar> {

  int _selectedIndex = 0;
  final List<Widget> _widgetOptions = <Widget>[
    HomePage(),
    Products(),
    Commuter(),
    Messages(),
    Notifications(),
  ];

  void _onItemTap(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Center(
        child: _widgetOptions[_selectedIndex],
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home,
            ),
            title:
              Text('Home'),
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.message,
            ),
            title:
              Text('Messages'),
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.person,
            ),
            title:
              Text('Profile'),
          ),

          BottomNavigationBarItem(
            icon: Icon(
              Icons.notifications_active_sharp,
            ),
            title:
              Text('Profile'),
          ),

          BottomNavigationBarItem(
            icon: Icon(
              Icons.person,
            ),
            title:
              Text('Profile'),
          ),
        ],
       currentIndex: _selectedIndex,
       onTap: _onItemTap,
        selectedFontSize: 13.0,
        unselectedFontSize: 13.0,
        type: BottomNavigationBarType.fixed,
      ),
    );
  }
}
