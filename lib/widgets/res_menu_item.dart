import 'package:flutter/material.dart';

class ResMenuItemlist extends StatelessWidget {
  final String name;
  final String id;
  final String imageUrl;
  final String price;
  ResMenuItemlist({
    required this.id,
    required this.name,
    required this.price,
    required this.imageUrl,
  });
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.symmetric(horizontal: 5.0, vertical: 3.0),
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(0.0),
        ),
        elevation: 5.0,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: const EdgeInsets.all(
                20,
              ),
              child: Text(
                name,
                textAlign: TextAlign.start,
                style: const TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: 25,
                  color: Colors.black,
                ),
                softWrap: true,
                overflow: TextOverflow.fade,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(
                20,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  const Icon(
                    Icons.price_change,
                    size: 18,
                    color: Colors.indigo,
                  ),
                  const SizedBox(
                    width: 3,
                  ),
                  Text(
                    price,
                    style: const TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 18,
                      color: Colors.black,
                    ),
                    softWrap: true,
                    overflow: TextOverflow.fade,
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
