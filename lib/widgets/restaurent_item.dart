import 'package:flutter/material.dart';

import '../screens/res_menu_details.dart';

class RestaurentItem extends StatelessWidget {
  final String id;
  final String name;
  final String imageUrl;
  final String location;
  final String contact;
  RestaurentItem({
    required this.name,
    required this.id,
    required this.imageUrl,
    required this.location,
    required this.contact,
  });
  void _selectMenu(BuildContext context) {
    Navigator.of(context).pushNamed(
      ResMenuDetailsScreen.routeName,
      arguments: {
        'id': id,
        'name': name,
        'imageUrl': imageUrl,
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => _selectMenu(context),
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(
            15,
          ),
        ),
        elevation: 5,
        margin: const EdgeInsets.all(
          10,
        ),
        child: Column(
          children: <Widget>[
            Stack(
              children: <Widget>[
                ClipRRect(
                  borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(15),
                    topRight: Radius.circular(15),
                  ),
                  child: Image.asset(
                    imageUrl,
                    height: 250,
                    width: double.infinity,
                    fit: BoxFit.cover,
                  ),
                ),
                Positioned(
                  bottom: 20,
                  right: 10,
                  child: Container(
                    color: Colors.black54,
                    width: 300,
                    padding: const EdgeInsets.symmetric(
                      vertical: 5,
                      horizontal: 20,
                    ),
                    child: Text(
                      name.toUpperCase(),
                      textAlign: TextAlign.center,
                      style: const TextStyle(
                        fontSize: 26,
                        color: Colors.white,
                      ),
                      softWrap: true,
                      overflow: TextOverflow.fade,
                    ),
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  Row(
                    children: <Widget>[
                      const Icon(
                        Icons.location_city,
                      ),
                      const SizedBox(
                        width: 6,
                      ),
                      Text(
                        location,
                      ),
                    ],
                  ),
                  Row(
                    children: <Widget>[
                      const Icon(
                        Icons.phone,
                      ),
                      const SizedBox(
                        width: 6,
                      ),
                      Text(
                        contact,
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
