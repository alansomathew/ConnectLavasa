import 'package:connect_lavasa/models/canteen.dart';
import 'package:connect_lavasa/widgets/canteen_body.dart';

import 'package:flutter/material.dart';

import '../widgets/main_drawer.dart';
import 'restaurent_screen.dart';

class CanteenScreen extends StatefulWidget {
  static const routeName = '/canteen-screen';

  @override
  State<CanteenScreen> createState() => _CanteenScreenState();
}

class _CanteenScreenState extends State<CanteenScreen> {
  final List<Map<String, dynamic>> _pages = [
    {
      'pages': CanteenBody(),
      'title': 'Canteen',
    },
    {
      'pages': RestaurentScreen(),
      'title': 'Restuarent',
    },
  ];
  int _selectedPageIndex = 0;

  void _selectPage(int index) {
    setState(() {
      _selectedPageIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(65),
        child: AppBar(
          title: Text(
            _pages[_selectedPageIndex]['title'],
          ),
        ),
      ),
      drawer: MainDrawer(),
      body: _pages[_selectedPageIndex]['pages'],
      bottomNavigationBar: BottomNavigationBar(
        onTap: _selectPage,
        backgroundColor: Theme.of(context).primaryColor,
        unselectedItemColor: Colors.white,
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            backgroundColor: Theme.of(context).primaryColor,
            icon: const Icon(
              Icons.restaurant_menu,
            ),
            label: 'Canteen',
          ),
          BottomNavigationBarItem(
            backgroundColor: Theme.of(context).primaryColor,
            icon: const Icon(
              Icons.restaurant,
            ),
            label: 'Restaurant',
          ),
        ],
        selectedItemColor: Colors.amber,
        type: BottomNavigationBarType.fixed,
        currentIndex: _selectedPageIndex,
      ),
    );
  }
}
