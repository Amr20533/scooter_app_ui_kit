import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:scotter_app_ui_kit/constants.dart';
import 'package:scotter_app_ui_kit/layouts/widgets/common/custom_title_text.dart';
import 'package:scotter_app_ui_kit/models/scooter_analysis_model.dart';

class ScooterCalculationBox extends StatelessWidget {
  const ScooterCalculationBox({
    super.key,
    required this.scooter,
  });

  final ScooterAnalysisModel scooter;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 152.31,
      height: 127.08,
      padding: const EdgeInsets.only(left: 18.69, right: 18.69, top: 20.56, bottom: 20.56),
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border.all(
          color: const Color(0xFFE6E5F2),
          width: 1,
        ),
        borderRadius: BorderRadius.circular(25),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          CustomTitleText(text: scooter.title, color: kBackgroundColor),
          SvgPicture.asset(scooter.icon),
          CustomTitleText(text: scooter.calculations, color: kPrimaryColor),
        ],
      ),
    );
  }
}

