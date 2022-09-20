import 'package:connect_lavasa/models/category.dart';
import 'package:connect_lavasa/models/contact.dart';
import 'package:flutter/material.dart';

// ignore: unnecessary_const
const DUMMY_CATEGORIES = const [
  Category(
    id: 'c1',
    title: 'Director',
    email: 'director@christuniversty.in',
    color: Colors.purpleAccent,
    about: 'about the director office',
  ),
  Category(
    id: 'c2',
    title: 'CDL',
    email: 'director@christuniversty.in',
    color: Colors.greenAccent,
    about: 'about the director office',
  ),
  Category(
    id: 'c3',
    title: 'Info Tech',
    email: 'director@christuniversty.in',
    color: Colors.grey,
    about: 'about the director office',
  ),
  Category(
    id: 'c4',
    title: 'Examination',
    email: 'director@christuniversty.in',
    color: Colors.amber,
    about: 'about the director office',
  ),
  Category(
    id: 'c5',
    title: 'Admission',
    email: 'director@christuniversty.in',
    color: Colors.orangeAccent,
    about: 'about the director office',
  ),
  Category(
    id: 'c6',
    title: 'Accounts',
    email: 'director@christuniversty.in',
    color: Colors.yellowAccent,
    about: 'about the director office',
  ),
  Category(
    id: 'c6',
    title: 'Data Science',
    email: 'director@christuniversty.in',
    color: Colors.deepPurpleAccent,
    about: 'about the director office',
  ),
  Category(
    id: 'c7',
    title: 'Parcel Office',
    email: 'director@christuniversty.in',
    color: Colors.deepPurpleAccent,
    about: 'about the director office',
  ),
  Category(
    id: 'c8',
    title: 'MBA',
    email: 'director@christuniversty.in',
    color: Colors.redAccent,
    about: 'about the director office',
  ),
  Category(
    id: 'c9',
    title: 'Data Science',
    email: 'director@christuniversty.in',
    color: Colors.deepPurpleAccent,
    about: 'about the director office',
  ),
  Category(
    id: 'c10',
    title: 'Data Science',
    email: 'director@christuniversty.in',
    color: Colors.deepPurpleAccent,
    about: 'about the director office',
  ),
  Category(
    id: 'c11',
    title: 'Data Science',
    email: 'director@christuniversty.in',
    color: Colors.deepPurpleAccent,
    about: 'about the director office',
  ),
  Category(
    id: 'c7',
    title: 'Data Science',
    email: 'director@christuniversty.in',
    color: Colors.deepPurpleAccent,
    about: 'about the director office',
  ),
  Category(
    id: 'c7',
    title: 'Data Science',
    email: 'director@christuniversty.in',
    color: Colors.deepPurpleAccent,
    about: 'about the director office',
  ),
  Category(
    id: 'c7',
    title: 'Data Science',
    email: 'director@christuniversty.in',
    color: Colors.deepPurpleAccent,
    about: 'about the director office',
  ),
];

List<Contact> DUMMY_CONTACTS = [
  Contact(
      id: 'e1',
      categories: ['c1'],
      name: 'Alanso Mathew',
      contact: '885',
      imageUrl:
          'https://kp.christuniversity.in/KnowledgePro/images/EmployeePhotos/E6164.jpg',
      emaila: 'alanso.mathew@christuniversity.in'),
  Contact(
      id: 'e2',
      categories: ['c7', 'c8', 'c2', 'c1'],
      name: 'Alanso Mathew',
      contact: '885',
      imageUrl:
          'https://kp.christuniversity.in/KnowledgePro/images/EmployeePhotos/E6164.jpg',
      emaila: 'alanso.mathew@christuniversity.in'),
  Contact(
      id: 'e3',
      categories: ['c6'],
      name: 'Alanso Mathew',
      contact: '885',
      imageUrl:
          'https://kp.christuniversity.in/KnowledgePro/images/EmployeePhotos/E6164.jpg',
      emaila: 'alanso.mathew@christuniversity.in'),
  Contact(
      id: 'e4',
      categories: ['c5'],
      name: 'Alanso Mathew',
      contact: '885',
      imageUrl:
          'https://kp.christuniversity.in/KnowledgePro/images/EmployeePhotos/E6164.jpg',
      emaila: 'alanso.mathew@christuniversity.in'),
  Contact(
      id: 'e5',
      categories: ['c4'],
      name: 'Alanso Mathew',
      contact: '885',
      imageUrl:
          'https://kp.christuniversity.in/KnowledgePro/images/EmployeePhotos/E6164.jpg',
      emaila: 'alanso.mathew@christuniversity.in'),
  Contact(
      id: 'e6',
      categories: ['c3'],
      name: 'Alanso Mathew',
      contact: '885',
      imageUrl:
          'https://kp.christuniversity.in/KnowledgePro/images/EmployeePhotos/E6164.jpg',
      emaila: 'alanso.mathew@christuniversity.in'),
  Contact(
      id: 'e7',
      categories: ['c1', 'c2'],
      name: 'Chandhu',
      contact: '885',
      imageUrl:
          'https://kp.christuniversity.in/KnowledgePro/images/EmployeePhotos/E6164.jpg',
      emaila: 'alanso.mathew@christuniversity.in'),
];
