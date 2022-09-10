import 'package:flutter/material.dart';
import 'package:model_interfaces/model_interfaces.dart';

// Define multiple classes using similar model interfaces.

class Product implements WithIdTitle<int> {
  @override
  final int id;

  @override
  final String title;

  final double price;

  Product({required this.id, required this.title, required this.price});
}

class Category extends WithIdTitle<String> {
  Category(String id, String title) : super(id, title);
}

// Create widgets that can show models of any classes.

class ItemCard<I> extends StatelessWidget {
  final WithIdTitle<I> item;
  final ValueChanged<I> onTap;

  ItemCard({required this.item});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => onTap(item.id),
      child: Text(item.title),
    );
  }
}
