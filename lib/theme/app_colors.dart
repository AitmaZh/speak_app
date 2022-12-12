import 'package:flutter/material.dart';

class AppColors {
  _Container container = _Container();
  _Scaffold scaffold = _Scaffold();
  _Text text = _Text();
}

class _Container {
  Color background = const Color.fromRGBO(255, 255, 255, 1);
}

class _Scaffold {
  Color background = const Color(0x00F6F7FC);
}

class _Text {
  Color heading = Colors.black;
  Color normal = const Color.fromRGBO(0, 0, 0, .85);
}
