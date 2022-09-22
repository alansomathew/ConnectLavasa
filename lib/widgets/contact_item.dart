import 'package:flutter/material.dart';

class ContactItem extends StatelessWidget {
  final String name;
  final String id;
  final String imageUrl;
  final String emaila;
  final String contact;
  ContactItem({
    required this.id,
    required this.emaila,
    required this.name,
    required this.contact,
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
        margin: const EdgeInsets.all(10),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          mainAxisSize: MainAxisSize.max,
          children: <Widget>[
            Stack(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 10.0,
                    vertical: 10.0,
                  ),
                  child: ClipRRect(
                    borderRadius: const BorderRadius.all(
                      Radius.circular(10.0),
                    ),
                    child: Image.asset(
                      imageUrl,
                      height: 100,
                      width: 80,
                    ),
                  ),
                ),
              ],
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.only(
                    top: 10,
                    left: 5,
                  ),
                  child: Text(
                    name,
                    style: const TextStyle(
                      fontSize: 25,
                      color: Colors.black,
                    ),
                    softWrap: true,
                    overflow: TextOverflow.fade,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                    left: 3,
                  ),
                  child: Row(
                    children: <Widget>[
                      const Icon(
                        Icons.perm_identity,
                        size: 18,
                        color: Colors.indigo,
                      ),
                      const SizedBox(
                        width: 3,
                      ),
                      Text(
                        id,
                        style: const TextStyle(
                          fontSize: 20,
                          color: Colors.black,
                        ),
                        softWrap: true,
                        overflow: TextOverflow.fade,
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                    left: 3,
                  ),
                  child: Row(
                    children: <Widget>[
                      const Icon(
                        Icons.mail_rounded,
                        size: 18,
                        color: Colors.indigo,
                      ),
                      const SizedBox(
                        width: 3,
                      ),
                      Text(
                        emaila,
                        style: const TextStyle(
                          fontSize: 20,
                          color: Colors.black,
                        ),
                        softWrap: true,
                        overflow: TextOverflow.fade,
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                    left: 3,
                  ),
                  child: Row(
                    children: <Widget>[
                      const Icon(
                        Icons.phone,
                        size: 18,
                        color: Colors.indigo,
                      ),
                      const SizedBox(
                        width: 3,
                      ),
                      Text(
                        contact,
                        style: const TextStyle(
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
          ],
        ),
      ),
    );
  }
}
