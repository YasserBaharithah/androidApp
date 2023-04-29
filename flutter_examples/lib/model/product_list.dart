import 'package:flutter/material.dart';

class ProductList {
  final String product;
  final IconData iconData;

  ProductList({required this.product, required this.iconData});

  List<ProductList> products = [
    ProductList(product: 'Ceramic', iconData: Icons.phone),
    ProductList(product: 'Block', iconData: Icons.swipe),
    ProductList(product: 'Marble', iconData: Icons.swap_calls),
    ProductList(product: 'EnterLook', iconData: Icons.score_outlined)
  ];

}
