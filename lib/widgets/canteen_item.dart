import 'package:flutter/material.dart';

class CanteenItem extends StatelessWidget {
  void _selectMenu() {}
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: _selectMenu,
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
              children:  <Widget>[
                ClipRRect(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(15),
                    topRight: Radius.circular(15),
                  ),
                  child: Image.asset(name),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
