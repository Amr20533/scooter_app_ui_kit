import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:provider/provider.dart';
import 'package:scotter_app_ui_kit/data/onboarding_pages_data.dart';
import 'package:scotter_app_ui_kit/layouts/widgets/common/custom_white_text.dart';
import 'package:scotter_app_ui_kit/layouts/widgets/on_boarding/animated_text_view.dart';
import 'package:scotter_app_ui_kit/notifiers/boarding_notifier.dart';

class OnBoardingPageView extends StatelessWidget {
  const OnBoardingPageView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 12),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset('assets/icons/rocket.png'),
              const SizedBox(width: 10),
              const CustomWhiteText(text: 'Rockit'),
            ],
          ),
        ),
        const SizedBox(
          width: 251,
          height: 72,
          child: CustomWhiteText(text: 'Your scooter in \none app', fontSize: 26),
        ),
        Padding(
          padding: EdgeInsets.symmetric(vertical: MediaQuery.sizeOf(context).height * 0.042),
          child: SvgPicture.asset("assets/images/scooter_illustration.svg"),
        ),
        const AnimatedTextView(),
      ],
    );
  }
}