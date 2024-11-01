import 'package:flutter/material.dart';
import 'package:scotter_app_ui_kit/layouts/widgets/common/custom_subtitle_text.dart';
import 'package:scotter_app_ui_kit/layouts/widgets/navigator_view/animated_scooter.dart';
import 'package:scotter_app_ui_kit/layouts/widgets/navigator_view/custom_navigator_app_bar.dart';
import 'package:scotter_app_ui_kit/layouts/widgets/navigator_view/navigator_tiles.dart';
import 'package:scotter_app_ui_kit/layouts/widgets/navigator_view/navigator_user_info_bar.dart';

class NavigationScreen extends StatelessWidget {
  const NavigationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: customNavigatorAppBar(context),
      body: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          const AnimatedScooter(),
          Padding(
            padding: EdgeInsets.only(top: MediaQuery.sizeOf(context).height * 0.05),
            child: const Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                NavigatorUserInfoBar(),
                NavigatorTiles(),
                Spacer(),
                Padding(
                  padding: EdgeInsets.only(bottom: 27, left: 25),
                  child: CustomSubTitleText(
                    text: "Version 10.0.1",
                    color: Colors.white,
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }

}
