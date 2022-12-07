import 'package:day_eleven_study/jollibee.dart';
import 'package:day_eleven_study/serenitea.dart';
import 'package:day_eleven_study/starbucks.dart';
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: const Text('Welcome'),
        automaticallyImplyLeading: false,
        actions: [
          IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.shopping_cart_outlined,
                size: 30,
              ))
        ],
      ),
      backgroundColor: Colors.teal.shade100,
      body: Center(
        child: CarouselSlider(items: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Image.asset('images/milktea.jpg'),
              ),
              Text(
                'Serenitea',
                style: GoogleFonts.raleway(fontSize: 30),
              ),
              const SizedBox(
                height: 10,
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: ((BuildContext context) {
                        return const Serenitea();
                      }),
                    ),
                  );
                },
                child: const Text(
                  'Order Now',
                  style: TextStyle(fontSize: 17),
                ),
              )
            ],
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Image.asset('images/coffee.jpg'),
              ),
              Text(
                'Starbucks',
                style: GoogleFonts.raleway(fontSize: 30),
              ),
              const SizedBox(
                height: 10,
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: ((BuildContext context) {
                        return const StarBucks();
                      }),
                    ),
                  );
                },
                child: const Text(
                  'Order Now',
                  style: TextStyle(fontSize: 17),
                ),
              )
            ],
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Image.asset('images/jabee.png'),
              ),
              Text(
                'Jollibee',
                style: GoogleFonts.raleway(fontSize: 30),
              ),
              const SizedBox(
                height: 10,
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: ((BuildContext context) {
                        return const Jollibee();
                      }),
                    ),
                  );
                },
                child: const Text(
                  'Order Now',
                  style: TextStyle(fontSize: 17),
                ),
              )
            ],
          ),
        ], options: CarouselOptions(enableInfiniteScroll: true, height: 400)),
      ),
    );
  }
}
