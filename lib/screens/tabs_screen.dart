import 'package:flutter/material.dart';
import '../screens/notice_screen.dart';
import '../screens/other_screen.dart';
import '../screens/timetable_screen.dart';
import '../widgets/main_drawer.dart';
import '../screens/categories_screen.dart';

class TabsScreen extends StatefulWidget {
  static const routeName = '/tabs-screen';

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
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(65),
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
