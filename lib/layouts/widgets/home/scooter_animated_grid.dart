import 'package:flutter/material.dart';
import 'package:scotter_app_ui_kit/data/scooter_data.dart';
import 'package:scotter_app_ui_kit/layouts/widgets/home/scooter_calculation_box.dart';

class ScooterAnimationGrid extends StatefulWidget {
  const ScooterAnimationGrid({super.key});

  @override
  ScooterAnimationGridState createState() => ScooterAnimationGridState();
}

class ScooterAnimationGridState extends State<ScooterAnimationGrid>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late List<Animation<double>> _animations;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      duration: const Duration(seconds: 1),
      vsync: this,
    );

    _animations = List.generate(scooters.length, (index) {
      final animation = Tween<double>(begin: 0, end: 1).animate(
        CurvedAnimation(
          parent: _controller,
          curve: Interval(index * 0.2, 1.0, curve: Curves.easeIn),
        ),
      );
      return animation;
    });

    Future.delayed(const Duration(milliseconds: 1300), () {
      _controller.forward();
    });
  }


  @override
  Widget build(BuildContext context) {
    return GridView.count(
      crossAxisCount: 2,
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
      crossAxisSpacing: 20,
      mainAxisSpacing: 20,
      scrollDirection: Axis.vertical,
      physics: const NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      children: List.generate(scooters.length, (index) {
        return FadeTransition(
          opacity: _animations[index],
          child: ScooterCalculationBox(scooter: scooters[index]),
        );
      }),
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }
}
