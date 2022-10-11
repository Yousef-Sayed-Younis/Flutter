import 'dart:async';
import 'package:flutter/material.dart';
import '../resources/route_manager.dart';

class SplashView extends StatefulWidget {
  const SplashView({super.key});

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {
  Timer? _timer;

  _startDelay() => _timer = Timer(const Duration(seconds: 2), _getNextPage);

  _getNextPage() => Navigator.pushReplacementNamed(context, Routes.loginRoute);

  @override
  void initState() {
    super.initState();
    _startDelay();
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(body: Center(child: Text("Splash Screen")));
  }

  @override
  void dispose() {
    _timer?.cancel();
    super.dispose();
  }
}
