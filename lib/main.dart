import 'package:flutter/material.dart';
import 'package:flip_card/flip_card.dart';
import 'package:speak_mobile/flashcard_view.dart';

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
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Flash Cards'),
        ),
        body: Center(
          child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
            // Flash Card
            Container(
              margin: const EdgeInsets.symmetric(vertical: 30),
              child: SizedBox(
                width: 360,
                height: 270,
                child: FlipCard(
                  speed: 550,
                  front: FlashCardView(text: "Front 2"),
                  back: FlashCardView(text: "Back 2"),
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
