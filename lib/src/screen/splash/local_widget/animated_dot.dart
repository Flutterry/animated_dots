import 'package:animated_dots/src/application.dart';
import 'package:animated_dots/src/screen/splash/local_model/dot.dart';

class AnimatedDot extends StatelessWidget {
  static const duration = Duration(milliseconds: 800);
  final Dot dot;

  const AnimatedDot({Key? key, required this.dot}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AnimatedAlign(
      alignment: dot.position,
      duration: duration,
      child: AnimatedContainer(
        duration: duration,
        width: dot.size,
        height: dot.size,
        decoration: BoxDecoration(
          color: dot.color,
          shape: BoxShape.circle,
        ),
      ),
    );
  }
}
