import 'package:flutter/material.dart';
import 'package:score_app/View/matchs_view.dart';

class SplashView extends StatelessWidget {
  const SplashView({super.key});

  @override
  Widget build(BuildContext context) {
    Future.delayed(const Duration(seconds: 5), () {
      Navigator.push(
        context,
        PageRouteBuilder(
          pageBuilder: (context, animation, secondaryAnimation) =>
              const MatchsView(),
          transitionsBuilder: (context, animation, secondaryAnimation, child) {
            var scaleAnimation = animation.drive(
              Tween(begin: 0.0, end: 1.0).chain(
                CurveTween(curve: Curves.easeInOut),
              ),
            );
            return ScaleTransition(
              scale: scaleAnimation,
              child: child,
            );
          },
          transitionDuration: const Duration(seconds: 2),
        ),
      );
    });

    return Scaffold(
      backgroundColor: const Color(0xff4d9176),
      body: Center(
        child: Image.asset('assets/MessivsNeuer.gif'),
      ),
    );
  }
}
