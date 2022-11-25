import 'package:flutter/material.dart';
import 'package:flip_card/flip_card.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Flash Cards'),
        ),
        body: Center(
          child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
            // Flash Card
            Container(
              margin: const EdgeInsets.symmetric(vertical: 30),
              child: const SizedBox(
                width: 360,
                height: 300,
                child: FlipCard(
                  speed: 550,
                  front: Card(
                    elevation: 4,
                    margin: const EdgeInsets.symmetric(horizontal: 5),
                    color: Colors.white,
                    child: Center(child: Text('Front')),
                  ),
                  back: Card(
                    elevation: 4,
                    margin: const EdgeInsets.symmetric(horizontal: 5),
                    color: Colors.white,
                    child: Center(child: Text('Back')),
                  ),
                ),
              ),
            ),

            // Switch buttons
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  OutlinedButton.icon(
                    onPressed: () {},
                    icon: const Icon(Icons.chevron_left),
                    label: const Text('Prev'),
                  ),
                  const Text(
                    'Tap the card to flip',
                    style: TextStyle(color: Colors.black54, fontSize: 13),
                  ),
                  OutlinedButton.icon(
                    onPressed: () {},
                    label: const Text('Next'),
                    icon: const Icon(Icons.chevron_right),
                  ),
                ],
              ),
            ),
          ]),
        ),
      ),
    );
  }
}
