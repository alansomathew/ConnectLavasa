import 'package:flutter/material.dart';

import '../widgets/main_drawer.dart';

class CanteenScreen extends StatelessWidget {
  static const routeName = '/canteen-screen';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(65),
        child: AppBar(
          title: const Text(
            'Canteen',
          ),
        ),
      ),
      drawer: MainDrawer(),
      body: ListView.builder(
        itemBuilder: (ctx, index) => {
          
        },
itemCount: ,
      ),
    );
  }
}
