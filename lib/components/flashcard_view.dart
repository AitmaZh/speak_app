import 'package:flutter/material.dart';
import '/theme/style_imports.dart';

class FlashCardView extends StatelessWidget {
  final String? text;

  const FlashCardView({Key? key, this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4,
      margin: const EdgeInsets.symmetric(horizontal: 5),
      color: StyleImports.colors.container.background,
      shape: RoundedRectangleBorder(
        side: BorderSide(
          color: StyleImports.colors.border.flashcard,
          ),
          borderRadius: const BorderRadius.all(Radius.circular(12)),
          ),
          child: Center(
            child: Text(text!, textAlign: TextAlign.center,),
          ),
    );
  }
}
