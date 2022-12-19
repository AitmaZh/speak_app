import 'package:flutter/material.dart';
import 'package:flip_card/flip_card.dart';
import '/models/flashcard.dart';
import '/components/flashcard_view.dart';
import '/theme/style_imports.dart';

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
    return const ActionListenerFlashcards();
  }
}

class ActionListenerFlashcards extends StatefulWidget {
  const ActionListenerFlashcards({super.key});

  @override
  State<ActionListenerFlashcards> createState() =>
      _ActionListenerFlashcardsState();
}

class _ActionListenerFlashcardsState extends State<ActionListenerFlashcards> {
  List<Flashcard> _flashcards = [
    Flashcard(question: "question 1", answer: "answer 1"),
    Flashcard(question: "question 2", answer: "answer 2"),
    Flashcard(question: "question 3", answer: "answer 3"),
    Flashcard(question: "question 4", answer: "answer 4"),
  ];

  bool _left = true;
  bool _right = false;
  int _index = 0;

  @override
  void initState() {
    super.initState();
  }

  void _increaseIndex() {
    setState(() {
      if (_index == _flashcards.length - 2) {
        _right = true;
      }
      _left = false;
      _index =
          (_index++ < _flashcards.length) ? _index++ : _flashcards.length - 1;
    });
  }

  void _decreaseIndex() {
    setState(() {
      if (_index == 1) {
        _left = true;
      }
      _right = false;
      _index = (_index-- >= 0) ? _index-- : _flashcards.length--;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: StyleImports.colors.scaffold.background,
        appBar: AppBar(
          title: const Text(
            '[Cards index]',
            style: TextStyle(
              color: Colors.black,
            ),
          ),
          backgroundColor: StyleImports.colors.appBar.background,
          shadowColor: StyleImports.colors.appBar.shadow,
        ),
        body: Center(
          child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
            // ---------------------------------------------- Flash Card
            Container(
              margin: const EdgeInsets.symmetric(vertical: 30),
              child: SizedBox(
                width: 360,
                height: 450,
                child: FlipCard(
                  speed: 550,
                  front: FlashCardView(text: _flashcards[_index].question),
                  back: FlashCardView(text: _flashcards[_index].answer),
                ),
              ),
            ),

            // ---------------------------------------------- Switch buttons
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  if (_left)
                    const IconButton(
                      onPressed: null,
                      icon: Icon(Icons.chevron_left),
                      tooltip: 'Previous card',
                    )
                  else
                    IconButton(
                      onPressed: _decreaseIndex,
                      icon: const Icon(Icons.chevron_left),
                      tooltip: 'Previous card',
                    ),
                  const Text(
                    'Tap the card to flip',
                    style: TextStyle(color: Colors.black, fontSize: 13),
                  ),
                  if (_right)
                    const IconButton(
                      onPressed: null,
                      icon: Icon(Icons.chevron_right),
                      tooltip: 'Previous card',
                    )
                  else
                    IconButton(
                      onPressed: _increaseIndex,
                      icon: const Icon(Icons.chevron_right),
                      tooltip: 'Previous card',
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

class MyAction extends Action<MyIntent> {
  @override
  void addActionListener(ActionListenerCallback listener) {
    super.addActionListener(listener);
    debugPrint('Action Listener was added');
  }

  @override
  void removeActionListener(ActionListenerCallback listener) {
    super.removeActionListener(listener);
    debugPrint('Action Listener was removed');
  }

  @override
  void invoke(covariant MyIntent intent) {
    notifyActionListeners();
  }
}

class MyIntent extends Intent {
  const MyIntent();
}

class MyStatefulWidget extends StatefulWidget {
  const MyStatefulWidget({super.key});

  @override
  State<MyStatefulWidget> createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<MyStatefulWidget> {
  @override
  Widget build(BuildContext context) {
    return const ActionListenerFlashcards();
  }
}
