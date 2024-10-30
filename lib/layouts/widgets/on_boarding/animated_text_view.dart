import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:scotter_app_ui_kit/data/onboarding_pages_data.dart';
import 'package:scotter_app_ui_kit/layouts/widgets/common/custom_white_text.dart';
import 'package:scotter_app_ui_kit/notifiers/boarding_notifier.dart';

class AnimatedTextView extends StatelessWidget {
  const AnimatedTextView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Consumer<BoardingNotifier>(builder: (context, notifier, _){
      return SizedBox(
          width: 315,
          height: 84,
          child: PageView.builder(
            controller: notifier.pageController,
            itemCount: onBoardingPagesData.length,
            onPageChanged: (int page){
              notifier.currentPage = page;
            },
            scrollDirection: Axis.vertical,
            itemBuilder: (context, index) {
              return CustomWhiteText(
                text: onBoardingPagesData[index]['description']!,
                fontSize: 18,
                fontWeight: FontWeight.w400,
              );
            },
          )
      );
    });
  }

}
