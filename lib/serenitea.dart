import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

final drinks = [
  'Assam Medium',
  'Brack Dragon Medium',
  'Jasmine Medium',
  'Okinawa Medium',
  'Wintermelon Medium',
  'Nagasaki Medium',
  'Hokkaido Medium',
  'Emperor Medium'
];
final prices = ['95', '95', '95', '105', '105', '105', '105', '105'];

class Serenitea extends StatelessWidget {
  const Serenitea({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Serenitea Menu'),
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
