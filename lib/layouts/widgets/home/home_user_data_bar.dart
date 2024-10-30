import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:scotter_app_ui_kit/constants.dart';
import 'package:scotter_app_ui_kit/layouts/views/navigation_screen.dart';
import 'package:scotter_app_ui_kit/layouts/widgets/common/custom_subtitle_text.dart';
import 'package:scotter_app_ui_kit/layouts/widgets/common/custom_title_text.dart';

import '../common/custom_fade_transition_route.dart';

class HomeUserDataBar extends StatelessWidget {
  const HomeUserDataBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 25, bottom: 25, left: 20, right: 20),
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
          const Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CustomTitleText(
                text: 'Whitney Leon',
              ),
              SizedBox(height: 5,),
              CustomSubTitleText(
                text: 'Welcome back !',
              ),
            ],
          ),
          const Spacer(),
          IconButton(
              onPressed: (){
                Navigator.of(context).push(
                    customFadeTransitionRoute(const NavigationScreen())
                );
              },
              icon: SvgPicture.asset('assets/icons/Union.svg')),
        ],
      ),
    );
  }
}
