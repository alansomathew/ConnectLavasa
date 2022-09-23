import 'models/res_menu.dart';
import 'models/restaurent.dart';

List<Restaurent> DUMMY_RESTAURENT = [
  Restaurent(
    id: 'canteen1',
    name: 'Restaurent1',
    contact: '9447908235',
    imageUrl: 'assets/images/minimart.png',
    location: 'Lavasa Market',
  ),
  Restaurent(
    id: 'canteen2',
    name: 'Restaurent2',
    contact: '9447908235',
    imageUrl: 'assets/images/minimart.png',
    location: 'promenade',
  ),
  Restaurent(
    id: 'canteen3',
    name: 'Restaurent3',
    contact: '9447908235',
    imageUrl: 'assets/images/minimart.png',
    location: 'Lavasa Market',
  ),
  Restaurent(
    id: 'canteen4',
    name: 'Restaurent4',
    contact: '9447908235',
    imageUrl: 'assets/images/minimart.png',
    location: 'promenade',
  ),
];

List<ResMenu> DUMMY_RESMENU = const [
  ResMenu(
    id: 'item1',
    canteen: ['canteen1', 'canteen2'],
    name: 'Idili',
    price: '40',
  ),
  ResMenu(
    id: 'item2',
    canteen: ['canteen4', 'canteen2'],
    name: 'Dosa',
    price: '40',
  ),
  ResMenu(
    id: 'item3',
    canteen: ['canteen1', 'canteen4'],
    name: 'Masala Dosa',
    price: '60',
  ),
  ResMenu(
    id: 'item4',
    canteen: ['canteen3', 'canteen2'],
    name: 'Tea',
    price: '10',
  ),
  ResMenu(
    id: 'item5',
    canteen: [
      'canteen1',
    ],
    name: 'Kerala Meals',
    price: '120',
  ),
];
