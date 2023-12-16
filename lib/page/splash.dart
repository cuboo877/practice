import 'package:flutter/material.dart';
import 'home.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  State<StatefulWidget> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  void _delayToNavHome() async {
    await Future.delayed(const Duration(milliseconds: 500));
    if (mounted) {
      Navigator.of(context).pushReplacement(
          MaterialPageRoute(builder: (context) => const HomePage()));
    }
  }

  @override
  void initState() {
    super.initState();
    _delayToNavHome();
  }

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Image(image: AssetImage("assets/icon.png")),
    );
  }
}
