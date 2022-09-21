import 'package:flutter/material.dart';

import '../widgets/main_drawer.dart';

class RestaurentScreen extends StatelessWidget {
  static const routeName = '/restaurant-screen';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(65),
        child: AppBar(
          title: const Text(
            'Restaurent',
          ),
        ),
      ),
      drawer: MainDrawer(),
    );
  }
}
