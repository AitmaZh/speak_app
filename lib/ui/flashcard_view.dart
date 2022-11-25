import 'package:flutter/material.dart';

class FlashCardView extends StatelessWidget {
  final String? text;

  const FlashCardView({Key? key, this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4,
      margin: const EdgeInsets.symmetric(horizontal: 5),
      color: Colors.white,
      shape: const RoundedRectangleBorder(
        side: BorderSide(
          color: Colors.white10,
          ),
          borderRadius: BorderRadius.all(Radius.circular(12)),
          ),
          child: Center(
            child: Text(text!, textAlign: TextAlign.center,),
          ),
    );
  }
}
