import 'package:flutter/material.dart';
import 'package:flip_card/flip_card.dart';
import 'package:speak_mobile/ui/home_page.dart';
import '/models/flashcard.dart';
import 'ui/components/flashcard_view.dart';
import '/theme/style_imports.dart';
import 'package:firebase_core/firebase_core.dart';
import 'ui/action_listener_flashcards.dart';
import 'firebase_options.dart';

void main() async {
  // WidgetsFlutterBinding.ensureInitialized();
  // await Firebase.initializeApp(
  //   options: DefaultFirebaseOptions.currentPlatform,
  // );
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
    // return const ActionListenerFlashcards();
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/': (context) => const HomePage(),
        // '/qr_home': (context) => const QRScannerPage(),
        // '/flashcards_home': (context) => const FlashcardsHomePage(),
        // '/profile_home': (context) => const ProfilePage(),
      },
    );
  }
}
