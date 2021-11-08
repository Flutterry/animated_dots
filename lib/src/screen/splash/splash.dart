import 'package:animated_dots/src/application.dart';
import 'package:animated_dots/src/screen/splash/local_widget/local_widgets.dart';

class SplashScreen extends StatefulWidget {
  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  late SplashProvider provider;

  @override
  void initState() {
    Future.delayed(Duration.zero, () {
      context.read<SplashProvider>().init();
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    provider = context.watch<SplashProvider>();
    return Scaffold(
      body: Stack(
        children: [
          ...provider.dots.map((e) => AnimatedDot(dot: e)),
          GestureDetector(
            onTap: provider.refreshUi,
            child: Container(
              width: getWidth(100),
              height: getHeight(100),
              color: Colors.red.withOpacity(0),
            ),
          )
        ],
      ),
    );
  }
}
