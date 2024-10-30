import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';


class AnimatedScooter extends StatefulWidget {
  const AnimatedScooter({
    super.key,
  });

  @override
  State<AnimatedScooter> createState() => _AnimatedScooterState();
}

class _AnimatedScooterState extends State<AnimatedScooter>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<Offset> _offsetAnimation;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      duration: const Duration(seconds: 1),
      vsync: this,
    );

    _offsetAnimation = Tween<Offset>(
      begin: const Offset(-1.0, 0.0),
      end: Offset.zero,
    ).animate(CurvedAnimation(
      parent: _controller,
      curve: Curves.easeInOut,
    ));

    Future.delayed(const Duration(milliseconds: 100), () {
      _controller.forward();
    });
  }



  @override
  Widget build(BuildContext context) {
    return SlideTransition(
      position: _offsetAnimation,
      child: Padding(
        padding: const EdgeInsets.only(right: 10.44, bottom: 21.2),
        child: SvgPicture.asset("assets/images/scooter.svg"),
      ),
    );
  }
  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }
}