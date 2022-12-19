import 'package:flutter/material.dart';

class AppColors {
  _AppBar appBar = _AppBar();
  _Border border = _Border();
  _Container container = _Container();
  _Scaffold scaffold = _Scaffold();
  _Text text = _Text();
  _TextStyle textStyle = _TextStyle();
}

class _AppBar {
  Color background = const Color.fromARGB(255, 246, 247, 252);
  Color shadow = Colors.blueGrey.withOpacity(.1);
  // const Color.fromARGB(255, 224, 224, 224);
}

class _Border {
  Color flashcard = const Color.fromARGB(221, 224, 224, 224);
}

class _Container {
  Color background = const Color.fromRGBO(255, 255, 255, 1);
}

class _Scaffold {
  Color background = const Color.fromARGB(255, 246, 247, 252);
}

class _Text {
  Color heading = Colors.black;
  Color normal = const Color.fromRGBO(0, 0, 0, .85);
}

class _TextStyle {
  Color normal = const Color.fromRGBO(0, 0, 0, .85);
}
