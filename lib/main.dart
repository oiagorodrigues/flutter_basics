import 'package:flutter/material.dart';
import 'package:flutter_study/screens/shopping_list.dart';
import 'package:flutter_study/widgets/shopping_list_item.dart';

void main() {
  runApp(MaterialApp(
    title: 'Shopping App',
    home: ShoppingList(
      products: <Product>[
        Product(name: 'Eggs'),
        Product(name: 'Flour'),
        Product(name: 'Chocolate chips'),
      ],
    ),
  ));
}
