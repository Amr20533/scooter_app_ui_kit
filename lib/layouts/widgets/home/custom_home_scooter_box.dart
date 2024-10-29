import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:scotter_app_ui_kit/layouts/widgets/common/custom_subtitle_text.dart';
import 'package:scotter_app_ui_kit/layouts/widgets/common/custom_title_text.dart';

class CustomHomeScooterBox extends StatelessWidget {
  const CustomHomeScooterBox({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SvgPicture.asset('assets/images/updated scooter card.svg'),
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
    );
  }
}
