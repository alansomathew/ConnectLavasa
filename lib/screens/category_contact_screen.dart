import 'package:connect_lavasa/dummy_data.dart';
import 'package:connect_lavasa/widgets/contact_item.dart';
import 'package:flutter/material.dart';

class CategoryContact extends StatelessWidget {
  static const routeName = '/category-contact';
  // final String categoryId;
  // final String categoryTitle;

  // CategoryContact(this.categoryId, this.categoryTitle);

  @override
  Widget build(BuildContext context) {
    final routeArgs =
        ModalRoute.of(context)?.settings.arguments as Map<String, String>;
    final categoryTitle = routeArgs['title'];
    final categoryId = routeArgs['id'];
    final categoryContact = DUMMY_CONTACTS.where((contact) {
      return contact.categories.contains(categoryId);
    }).toList();
    return Scaffold(
      appBar: AppBar(
        title: Text(categoryTitle!),
      ),
      body: ListView.builder(
        shrinkWrap: true,
        itemBuilder: (ctx, index) {
          return ContactItem(
              id: categoryContact[index].id,
              name: categoryContact[index].name,
              emaila: categoryContact[index].emaila,
              contact: categoryContact[index].contact,
              imageUrl: categoryContact[index].imageUrl);
        },
        itemCount: categoryContact.length,
      ),
    );
  }
}
