import 'package:flutter/material.dart';
import '../dummy_canteen.dart';

import '../widgets/canteen_item.dart';

class CanteenBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: DUMMY_CANTEEN
          .map((catData) => CanteenItem(
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
