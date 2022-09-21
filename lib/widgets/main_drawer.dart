import 'package:connect_lavasa/screens/restaurent_screen.dart';

import '../screens/canteen_screen.dart';
import '../screens/other_Screen.dart';
import '../screens/timetable_Screen.dart';

import 'package:flutter/material.dart';

class MainDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Drawer(
        child: Column(
          children: <Widget>[
            Container(
              width: double.infinity,
              height: 220,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [Colors.indigoAccent, Theme.of(context).primaryColor],
                  begin: Alignment.centerRight,
                  end: Alignment.centerLeft,
                ),
              ),
              padding: const EdgeInsets.all(20),
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: const EdgeInsets.only(
                  top: 10,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(
                        top: 1,
                      ),
                      child: Image.asset(
                        'assets/images/logo.png',
                        color: Colors.white,
                        height: 80,
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.only(
                        bottom: 10,
                        left: 10,
                      ),
                      child: Text(
                        'Yellow Pages',
                        style: TextStyle(
                          fontWeight: FontWeight.w900,
                          fontSize: 35,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            ListTile(
              leading: const Icon(
                Icons.home,
                size: 26,
              ),
              title: const Text(
                'Home',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
              onTap: () {
                Navigator.of(context).pushReplacementNamed('/');
              },
            ),
            ListTile(
              leading: const Icon(
                Icons.restaurant_menu,
                size: 26,
              ),
              title: const Text(
                'Canteens',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
              onTap: () {
                Navigator.of(context)
                    .pushReplacementNamed(CanteenScreen.routeName);
              },
            ),
            ListTile(
              leading: const Icon(
                Icons.restaurant,
                size: 26,
              ),
              title: const Text(
                'Restaurant',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
              onTap: () {
                Navigator.of(context)
                    .pushReplacementNamed(RestaurentScreen.routeName);
              },
            ),
            ListTile(
              leading: const Icon(
                Icons.settings,
                size: 26,
              ),
              title: const Text(
                'Settings',
                textAlign: TextAlign.left,
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
              onTap: () {
                Navigator.of(context)
                    .pushReplacementNamed(OtherScreen.routeName);
              },
            ),
          ],
        ),
      ),
    );
  }
}
