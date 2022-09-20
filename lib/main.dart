import 'package:connect_lavasa/screens/tabs_screen.dart';
import 'package:flutter/material.dart';
import './screens/categories_screen.dart';
import './screens/category_contact_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Connect Lavasa',
      theme: ThemeData(
        primaryColor: Colors.indigo,
        canvasColor: const Color.fromRGBO(255, 254, 229, 1),
        colorScheme: ColorScheme.fromSwatch(primarySwatch: Colors.indigo)
            .copyWith(secondary: Colors.lightBlue),
        fontFamily: 'BebasNeuePro',
        textTheme: ThemeData.light().textTheme.copyWith(
              bodyText1: const TextStyle(
                color: Color.fromRGBO(20, 51, 41, 1),
              ),
              bodyText2: const TextStyle(
                color: Color.fromRGBO(20, 51, 51, 1),
              ),
            ),
      ),
      home: TabsScreen(),
      routes: {
        CategoryContact.routeName: (ctx) => CategoryContact(),
      },
    );
  }
}
