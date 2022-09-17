import 'package:flutter/material.dart';

class Category {
  final String id;
  final String title;
  final Color color;
  final String email;

  const Category(
      {required this.id,
      required this.title,
      required this.email,
      this.color = Colors.blueAccent});
}
