import '../models/category.dart';
import '../models/contact.dart';
import 'package:flutter/material.dart';

const DUMMY_CATEGORIES = [
  Category(
    id: 'c1',
    title: 'Director',
    email: 'director@christuniversty.in',
    color: Colors.purpleAccent,
  ),
  Category(
    id: 'c2',
    title: 'CDL',
    email: 'director@christuniversty.in',
    color: Colors.greenAccent,
  ),
  Category(
    id: 'c3',
    title: 'Info Tech',
    email: 'director@christuniversty.in',
    color: Colors.grey,
  ),
  Category(
    id: 'c4',
    title: 'Examination',
    email: 'director@christuniversty.in',
    color: Colors.amber,
  ),
  Category(
    id: 'c5',
    title: 'Admission',
    email: 'director@christuniversty.in',
    color: Colors.orangeAccent,
  ),
  Category(
    id: 'c6',
    title: 'Accounts',
    email: 'director@christuniversty.in',
    color: Colors.yellowAccent,
  ),
  Category(
    id: 'c6',
    title: 'Data Science',
    email: 'director@christuniversty.in',
    color: Colors.deepPurpleAccent,
  ),
  Category(
    id: 'c7',
    title: 'Parcel Office',
    email: 'director@christuniversty.in',
    color: Colors.deepPurpleAccent,
  ),
  Category(
    id: 'c8',
    title: 'MBA',
    email: 'director@christuniversty.in',
    color: Colors.redAccent,
  ),
  Category(
    id: 'c9',
    title: 'Data Science',
    email: 'director@christuniversty.in',
    color: Colors.deepPurpleAccent,
  ),
  Category(
    id: 'c10',
    title: 'Data Science',
    email: 'director@christuniversty.in',
    color: Colors.deepPurpleAccent,
  ),
  Category(
    id: 'c11',
    title: 'Data Science',
    email: 'director@christuniversty.in',
    color: Colors.deepPurpleAccent,
  ),
  Category(
    id: 'c7',
    title: 'Data Science',
    email: 'director@christuniversty.in',
    color: Colors.deepPurpleAccent,
  ),
  Category(
    id: 'c7',
    title: 'Data Science',
    email: 'director@christuniversty.in',
    color: Colors.deepPurpleAccent,
  ),
  Category(
    id: 'c7',
    title: 'Data Science',
    email: 'director@christuniversty.in',
    color: Colors.deepPurpleAccent,
  ),
];

const DUMMY_CONTACTS = [
  Contact(
      id: 'e1',
      categories: ['c1'],
      name: 'Alanso Mathew',
      contact: '885',
      imageUrl: 'assets/images/E6164.JPG',
      emaila: 'alanso.mathew@christuniversity.in'),
  Contact(
      id: 'e2',
      categories: ['c7', 'c8', 'c2', 'c1'],
      name: 'Alanso Mathew',
      contact: '885',
      imageUrl: 'assets/images/E6164.JPG',
      emaila: 'alanso.mathew@christuniversity.in'),
  Contact(
      id: 'e3',
      categories: ['c6'],
      name: 'Alanso Mathew',
      contact: '885',
      imageUrl: 'assets/images/E6164.JPG',
      emaila: 'alanso.mathew@christuniversity.in'),
  Contact(
      id: 'e4',
      categories: ['c5'],
      name: 'Alanso Mathew',
      contact: '885',
      imageUrl: 'assets/images/E6164.JPG',
      emaila: 'alanso.mathew@christuniversity.in'),
  Contact(
      id: 'e5',
      categories: ['c4'],
      name: 'Alanso Mathew',
      contact: '885',
      imageUrl: 'assets/images/E6164.JPG',
      emaila: 'alanso.mathew@christuniversity.in'),
  Contact(
      id: 'e6',
      categories: ['c3'],
      name: 'Alanso Mathew',
      contact: '885',
      imageUrl: 'assets/images/E6164.JPG',
      emaila: 'alanso.mathew@christuniversity.in'),
  Contact(
      id: 'e7',
      categories: ['c1', 'c2'],
      name: 'Chandhu',
      contact: '885',
      imageUrl: 'assets/images/E6164.JPG',
      emaila: 'alanso.mathew@christuniversity.in'),
];
