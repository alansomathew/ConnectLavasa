import 'package:connect_lavasa/dummy_canteen.dart';
import 'package:connect_lavasa/models/canteen.dart';

import '../widgets/canteen_item.dart';
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
      body: ListView(
        children: DUMMY_CANTEEN
            .map((catData) => CanteenItem(
                  id: catData.id,
                  name: catData.name,
                  imageUrl: catData.imageUrl,
                  location: catData.location,
                  contact: catData.contact,
                ))
            .toList(),
      ),
    );
  }
}
