import 'package:animated_dots/src/application.dart';

import 'local_model/local_models.dart';

class SplashProvider extends ChangeNotifier {
  final dots = <Dot>[];

  void init() {
    dots.addAll(List.generate(200, (index) => Dot()));
    notifyListeners();
  }

  void refreshUi() {
    notifyListeners();
  }
}
