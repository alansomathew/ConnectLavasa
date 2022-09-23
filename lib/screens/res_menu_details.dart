import '../dummy_restuarent.dart';

import 'package:flutter/material.dart';

import '../widgets/res_menu_item.dart';

class ResMenuDetailsScreen extends StatelessWidget {
  static const routeName = '/menu-screen';

  @override
  Widget build(BuildContext context) {
    final canteenItem =
        ModalRoute.of(context)?.settings.arguments as Map<String, String>;
    final String canteenId = canteenItem['id'] as String;
    // print(canteenId);
    final String imageUrl = canteenItem['imageUrl'] as String;
    final String canteenName = canteenItem['name'] as String;
    // print(canteenName);
    final selectedMenu = DUMMY_RESMENU.where((menu) {
      return menu.canteen.contains(canteenId);
    }).toList();

    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(65),
        child: AppBar(
          title: Text(
            canteenName.toUpperCase(),
          ),
        ),
      ),
      // drawer: MainDrawer(),
      body: Column(
        children: [
          Container(
            child: Column(
              children: <Widget>[
                Stack(
                  children: <Widget>[
                    ClipRRect(
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
                          canteenName.toUpperCase(),
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
                Text(
                  'Menu'.toUpperCase(),
                  style: const TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    color: Colors.indigo,
                  ),
                ),
              ],
            ),
          ),
          ListView.builder(
            itemBuilder: ((context, index) {
              return ResMenuItemlist(
                id: selectedMenu[index].id,
                name: selectedMenu[index].name,
                price: selectedMenu[index].price,
                imageUrl: selectedMenu[index].id,
              );
            }),
            shrinkWrap: true,
            itemCount: selectedMenu.length,
          ),
        ],
      ),
    );
  }
}
