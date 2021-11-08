import 'dart:convert';

import 'package:animated_dots/src/application.dart';

extension DotFunctions on Dot {
  double get size =>
      getDouble(min: getWidth(5).toInt(), max: getWidth(15).toInt());
  Color get color => getColor();
  // -1, -1 top left
  // 1, 1 bottom right
  Alignment get position => Alignment(
        getDouble(
          min: -1,
          max: 1,
        ),
        getDouble(
          min: -1,
          max: 1,
        ),
      );
}

class Dot {}
