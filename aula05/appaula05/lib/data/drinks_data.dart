// Lista de bebidas disponíveis no app

import 'package:appaula04/model/dish.dart';

abstract class DrinksData {
  static final List<Dish> listDrinks = [
    Dish(
        id: 'drink-001',
        name: 'Coca-Cola Lata',
        description: 'Refrigerante gelado de 350 ml.',
        price: 6,
        imagePath: 'dishes/default.png'),
    Dish(
        id: 'drink-002',
        name: 'Guaraná Antarctica',
        description: 'Refrigerante de guaraná gelado de 350 ml.',
        price: 6,
        imagePath: 'dishes/default.png'),
    Dish(
        id: 'drink-003',
        name: 'Suco de Laranja',
        description: 'Suco natural de laranja, 500 ml, sem açúcar.',
        price: 10,
        imagePath: 'dishes/default.png'),
    Dish(
        id: 'drink-004',
        name: 'Suco de Limão',
        description: 'Limonada refrescante com gelo, 500 ml.',
        price: 9,
        imagePath: 'dishes/default.png'),
    Dish(
        id: 'drink-005',
        name: 'Suco Detox',
        description: 'Couve, limão, gengibre e maçã, 400 ml.',
        price: 12,
        imagePath: 'dishes/default.png'),
    Dish(
        id: 'drink-006',
        name: 'Água Mineral',
        description: 'Água mineral sem gás de 500 ml.',
        price: 4,
        imagePath: 'dishes/default.png'),
    Dish(
        id: 'drink-007',
        name: 'Chá Gelado',
        description: 'Chá de pêssego gelado, 450 ml.',
        price: 8,
        imagePath: 'dishes/default.png'),
    Dish(
        id: 'drink-008',
        name: 'Milk Shake de Chocolate',
        description: 'Sorvete batido com calda de chocolate, 400 ml.',
        price: 16,
        imagePath: 'dishes/default.png'),
  ];
}
