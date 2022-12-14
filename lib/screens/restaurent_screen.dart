import '../dummy_restuarent.dart';
import 'package:flutter/material.dart';
import '../widgets/restaurent_item.dart';
// import '../widgets/main_drawer.dart';

class RestaurentScreen extends StatelessWidget {
  static const routeName = '/restaurant-screen';

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: DUMMY_RESTAURENT
          .map((catData) => RestaurentItem(
                id: catData.id,
                name: catData.name,
                imageUrl: catData.imageUrl,
                location: catData.location,
                contact: catData.contact,
              ))
          .toList(),
    );
  }
}
