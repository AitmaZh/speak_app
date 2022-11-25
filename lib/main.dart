import 'package:flutter/material.dart';
import 'package:flip_card/flip_card.dart';
import 'package:speak_mobile/flashcard.dart';
import 'package:speak_mobile/ui/flashcard_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  List<Flashcard> _flashcards = [
    Flashcard(question: "question 1", answer: "answer 1"),
    Flashcard(question: "question 2", answer: "answer 2"),
    Flashcard(question: "question 3", answer: "answer 3"),
    Flashcard(question: "question 4", answer: "answer 4"),
  ];

  int _index = 0;

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
                  front: FlashCardView(text: _flashcards[_index].question),
                  back: FlashCardView(text: _flashcards[_index].answer),
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
                    onPressed: _decreaseIndex,
                    icon: const Icon(Icons.chevron_left),
                    label: const Text('Prev'),
                  ),
                  const Text(
                    'Tap the card to flip',
                    style: TextStyle(color: Colors.black54, fontSize: 13),
                  ),
                  OutlinedButton.icon(
                    onPressed: _increaseIndex,
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

  void _increaseIndex() {
    setState(() {
      _index = (_index++ < _flashcards.length) ? _index++ : 0;
    });
  }

  void _decreaseIndex() {
    setState(() {
      _index = (_index-- >= 0) ? _index-- : _flashcards.length--;
    });
  }
}
