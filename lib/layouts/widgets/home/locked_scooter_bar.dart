import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:scotter_app_ui_kit/constants.dart';
import 'package:scotter_app_ui_kit/layouts/widgets/common/custom_subtitle_text.dart';
import 'package:scotter_app_ui_kit/layouts/widgets/common/custom_title_text.dart';

class LockedScooterBar extends StatefulWidget {
  const LockedScooterBar({
    super.key,
  });

  @override
  State<LockedScooterBar> createState() => _LockedScooterBarState();
}

class _LockedScooterBarState extends State<LockedScooterBar> with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _animation;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      duration: const Duration(seconds: 7),
      vsync: this,
    );

    _animation = Tween<double>(begin: 0, end: 200).animate(CurvedAnimation(
      parent: _controller,
      curve: Curves.easeInOut,
    ));

    Future.delayed(const Duration(milliseconds: 1000), () {
      _controller.forward();
    });
  }

  @override
  Widget build(BuildContext context) {
    return SizeTransition(
      sizeFactor: _animation,
      axis: Axis.horizontal,
      child: Container(
        width: MediaQuery.sizeOf(context).width,
        height: 104,
        padding: EdgeInsets.symmetric(vertical: (104-60) / 2, horizontal: (MediaQuery.sizeOf(context).width - 274) / 4),
        margin: const EdgeInsets.symmetric(vertical: (104-60) / 2, horizontal: 20),
        decoration: BoxDecoration(
            color: kPrimaryColor,
            borderRadius: BorderRadius.circular(30)
        ),
        child: Row( mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CustomTitleText(
                  text: 'Whitney’s Scooter',
                  color: Colors.white,
                ),
                // SizedBox(height: 5,),
                CustomSubTitleText(
                  text: 'Locked',
                  fontSize: 16,
                  color: Colors.white,
                ),
              ],
            ),
            Container(
              width: 60,
              height: 60,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(width: 3, color: kBorderColor)
              ),
              child: SvgPicture.asset('assets/icons/lock.svg'),
            ),
          ],
        ),
      ),
    );
  }
  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }
}
