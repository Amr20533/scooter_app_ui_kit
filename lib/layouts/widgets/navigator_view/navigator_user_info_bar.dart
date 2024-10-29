import 'package:flutter/material.dart';
import 'package:scotter_app_ui_kit/constants.dart';
import 'package:scotter_app_ui_kit/layouts/widgets/common/custom_subtitle_text.dart';
import 'package:scotter_app_ui_kit/layouts/widgets/common/custom_title_text.dart';

class NavigatorUserInfoBar extends StatelessWidget {
  const NavigatorUserInfoBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 30, bottom: 25, left: 20, right: 20),
      child: Row(
        children: [
          CircleAvatar(
            radius: 40.22 / 1.7,
            backgroundColor: kPrimaryColor,
            child: Padding(
              padding: const EdgeInsets.only(top: 4),
              child: Image.asset('assets/images/user.png'),
            ),
          ),
          const SizedBox(width: 12,),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const CustomTitleText(
                text: 'Whitney Leon',
                color: Colors.white,
              ),
              const SizedBox(height: 5,),
              CustomSubTitleText(
                text: '+91 6787978287',
                color: Colors.white.withOpacity(0.7),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

