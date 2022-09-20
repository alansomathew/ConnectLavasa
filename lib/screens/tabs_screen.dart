import 'package:connect_lavasa/screens/notice_screen.dart';
import 'package:connect_lavasa/screens/other_screen.dart';
import 'package:connect_lavasa/screens/timetable_screen.dart';

import '../screens/categories_screen.dart';
import 'package:flutter/material.dart';

class TabsScreen extends StatefulWidget {
  @override
  State<TabsScreen> createState() => _TabsScreenState();
}

class _TabsScreenState extends State<TabsScreen> {
  final List<Map<String, dynamic>> _pages = [
    {
      'pages': CategoriesScreen(),
      'title': 'Contact',
    },
    {
      'pages': TimetableScreen(),
      'title': 'TimeTable',
    },
    {
      'pages': NoticeScreen(),
      'title': 'Notice',
    },
    {
      'pages': OtherScreen(),
      'title': 'Other',
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
      appBar: AppBar(
        title: Text(
          _pages[_selectedPageIndex]['title'],
        ),
      ),
    
      body: _pages[_selectedPageIndex]['pages'],
      bottomNavigationBar: BottomNavigationBar(
        onTap: _selectPage,
        backgroundColor: Theme.of(context).primaryColor,
        unselectedItemColor: Colors.white,
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            backgroundColor: Theme.of(context).primaryColor,
            icon: const Icon(
              Icons.contact_page,
            ),
            label: 'Contact',
          ),
          BottomNavigationBarItem(
            backgroundColor: Theme.of(context).primaryColor,
            icon: const Icon(
              Icons.calendar_month,
            ),
            label: 'TimeTable',
          ),
          BottomNavigationBarItem(
            backgroundColor: Theme.of(context).primaryColor,
            icon: const Icon(
              Icons.notifications_active,
            ),
            label: 'Notice',
          ),
          BottomNavigationBarItem(
            backgroundColor: Theme.of(context).primaryColor,
            icon: const Icon(
              Icons.widgets,
            ),
            label: 'Others',
          ),
        ],
        selectedItemColor: Colors.amber,
        type: BottomNavigationBarType.fixed,
        currentIndex: _selectedPageIndex,
      ),
    );
  }
}
