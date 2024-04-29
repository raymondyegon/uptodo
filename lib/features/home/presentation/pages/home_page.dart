import 'package:flutter/material.dart';
import 'package:uptodo/core/platform/platform.dart';
import 'package:uptodo/core/presentation/presentation.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final sc = SizeConfig(context: context);

    return PageMargin(
      child: ListView(),
    );
  }
}
