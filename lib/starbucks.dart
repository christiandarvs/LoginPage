import 'package:flutter/material.dart';

final drinks = [
  'Flat White',
  'Caramel Mocha',
  'Cafe Mocha',
  'Cappuccino',
  'Chocolate Americano',
  'Americano',
  'Brewed Coffee',
  'Espresso',
  'Hot Chocolate',
  'Citrus Cold Brew'
];

final prices = [
  '170',
  '180',
  '165',
  '175',
  '190',
  '180',
  '185',
  '170',
  '175',
  '165'
];

class StarBucks extends StatefulWidget {
  const StarBucks({super.key});

  @override
  State<StarBucks> createState() => _StarBucksState();
}

class _StarBucksState extends State<StarBucks> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Starbucks Menu'),
        elevation: 0,
      ),
      body: ListView.builder(
        itemCount: drinks.length,
        itemBuilder: ((context, index) {
          return Card(
            child: ListTile(
              title: Text(
                drinks[index],
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
