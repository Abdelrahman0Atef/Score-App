import 'package:flutter/material.dart';
import 'package:score_app/View/splash_view.dart';

void main() {
  runApp(const MatchsResult());
}

class MatchsResult extends StatelessWidget {
  const MatchsResult({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SplashView(),
    );
  }
}
