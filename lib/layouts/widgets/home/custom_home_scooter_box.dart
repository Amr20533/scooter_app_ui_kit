import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:scotter_app_ui_kit/layouts/widgets/common/custom_subtitle_text.dart';
import 'package:scotter_app_ui_kit/layouts/widgets/common/custom_title_text.dart';

class CustomHomeScooterBox extends StatefulWidget {
  const CustomHomeScooterBox({
    super.key,
  });

  @override
  State<CustomHomeScooterBox> createState() => _CustomHomeScooterBoxState();
}

class _CustomHomeScooterBoxState extends State<CustomHomeScooterBox>     with SingleTickerProviderStateMixin {
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

    Future.delayed(const Duration(milliseconds: 150), () {
      _controller.forward();
    });
  }


  @override
  Widget build(BuildContext context) {
    return SlideTransition(
      position: _offsetAnimation,
      child: Stack(
        children: [
          SvgPicture.asset('assets/images/updated scooter card.svg', width: double.infinity, height: 275,),
          const Positioned(
            top: 50,
            left: 45,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CustomTitleText(
                  text: 'We updated your scooter',
                  color: Colors.white,
                ),
                SizedBox(height: 20,),
                SizedBox(
                  width: 218,
                  height: 56,
                  child: CustomSubTitleText(
                    text: 'Everything your scooter needed we did it for you.',
                    fontSize: 14,
                    color: Colors.white,
                    textAlign: TextAlign.start,
                  ),
                ),
              ],
            ),
          ),

        ],
      ),
    );
  }
  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }
}
