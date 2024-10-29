import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:scotter_app_ui_kit/constants.dart';
import 'package:scotter_app_ui_kit/layouts/widgets/common/custom_subtitle_text.dart';
import 'package:scotter_app_ui_kit/layouts/widgets/common/custom_title_text.dart';

class LockedScooterBar extends StatelessWidget {
  const LockedScooterBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 325,
      height: 104,
      padding: const EdgeInsets.symmetric(vertical: (104-60) / 2, horizontal: (325 - 274) / 2),
      margin: const EdgeInsets.symmetric(vertical: (104-60) / 2),
      decoration: BoxDecoration(
          color: kPrimaryColor,
          borderRadius: BorderRadius.circular(30)
      ),
      child: Row( mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const Column(
            crossAxisAlignment: CrossAxisAlignment.start,
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
    );
  }
}
