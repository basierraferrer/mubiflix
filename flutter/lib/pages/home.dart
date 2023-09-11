import 'package:flutter/material.dart';
import 'package:mubiflix/widgets/features/home/main.dart';

class HomeRoute extends StatelessWidget {
  const HomeRoute({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Home(),
    );
  }
}
