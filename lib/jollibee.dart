import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

final menu = [
  'Yum Burger Value Meal',
  'Yum Burger Cheese Value Meal',
  'Bacon Cheese Yumburger Meal',
  'Yumburger Cheese Deal Meal',
  'Bacon Cheese Deluxe Yumburger Meal',
  'Amazing Aloha Yumburger Meal',
  'Yum Burger Champ Value Meal',
  'Amazing Aloha Champ Value Meal',
  'Jolly Hotdog Cheesy Classic w/ Drink',
  'Jolly Hotdog Cheesy Classic w/ Fries & Drink',
  'Jolly Hotdog Cheesy Classic w/ Fries & Float',
  '1 pc Burger Steak w/ Drink',
  '2 pc Burger Steak w/ Drink ',
  '1 pc Burger Steak with 3 pcs Shanghai w/ Drink',
  '1 pc Burger Steak w/ Fries & Drink',
  'Ultimate Burger Steak w/ Egg Meal & Drink',
  'Ultimate Burger Steak w/o Egg Meal & Drink',
];
final prices = [
  '86',
  '96',
  '110',
  '120',
  '130',
  '135',
  '195',
  '230',
  '245',
  '80',
  '120',
  '125',
  '65',
  '90',
  '109',
  '79',
  '190',
  '175'
];

class Jollibee extends StatelessWidget {
  const Jollibee({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Jollibee Menu'),
        elevation: 0,
      ),
      body: ListView.builder(
        itemCount: menu.length,
        itemBuilder: ((context, index) {
          return Card(
            child: ListTile(
              title: Text(
                menu[index],
                style: const TextStyle(fontSize: 18),
              ),
              subtitle: Text(
                prices[index],
                style: const TextStyle(fontSize: 16),
              ),
            ),
          );
        }),
      ),
    );
  }
}
