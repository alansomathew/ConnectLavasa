import './models/canteen.dart';
import './models/menu.dart';

List<Canteen> DUMMY_CANTEEN = [
  Canteen(
    id: 'canteen1',
    name: 'cantten1',
    contact: '9447908235',
    imageUrl: 'assets/images/minimart.png',
    location: 'Centeral Block',
  ),
  Canteen(
    id: 'canteen2',
    name: 'cantten2',
    contact: '9447908235',
    imageUrl: 'assets/images/minimart.png',
    location: 'MBA Block',
  ),
  Canteen(
    id: 'canteen3',
    name: 'cantten3',
    contact: '9447908235',
    imageUrl: 'assets/images/minimart.png',
    location: 'Centeral Block',
  ),
  Canteen(
    id: 'canteen4',
    name: 'cantten4',
    contact: '9447908235',
    imageUrl: 'assets/images/minimart.png',
    location: 'MBA Block',
  ),
];

List<Menu> DUMMY_MENU = const [
  Menu(
    id: 'item1',
    canteen: ['canteen1', 'canteen2'],
    name: 'Idili',
    price: '40',
  ),
  Menu(
    id: 'item2',
    canteen: ['canteen4', 'canteen2'],
    name: 'Dosa',
    price: '40',
  ),
  Menu(
    id: 'item3',
    canteen: ['canteen1', 'canteen4'],
    name: 'Masala Dosa',
    price: '60',
  ),
  Menu(
    id: 'item4',
    canteen: ['canteen3', 'canteen2'],
    name: 'Tea',
    price: '10',
  ),
  Menu(
    id: 'item5',
    canteen: [
      'canteen1',
    ],
    name: 'Kerala Meals',
    price: '120',
  ),
];
