import 'package:flutter/material.dart';
import 'package:scotter_app_ui_kit/constants.dart';
import 'package:scotter_app_ui_kit/data/scooter_data.dart';
import 'package:scotter_app_ui_kit/layouts/widgets/home/custom_home_scooter_box.dart';
import 'package:scotter_app_ui_kit/layouts/widgets/home/home_user_data_bar.dart';
import 'package:scotter_app_ui_kit/layouts/widgets/home/locked_scooter_bar.dart';
import 'package:scotter_app_ui_kit/layouts/widgets/home/scooter_calculation_box.dart';
import 'package:scotter_app_ui_kit/models/scooter_analysis_model.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kWhiteColor,
      body: SafeArea(
        child: SizedBox(
          height: 812,
          child: LayoutBuilder(
            builder: (context, constraints) {
              return SizedBox(
                height: constraints.maxHeight,
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      const HomeUserDataBar(),
                      const CustomHomeScooterBox(),
                      const LockedScooterBar(),
                      GridView.count(
                        crossAxisCount: 2,
                        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                        crossAxisSpacing: 20,
                        mainAxisSpacing: 20,
                        scrollDirection: Axis.vertical,
                        physics: const NeverScrollableScrollPhysics(),
                        shrinkWrap: true,  // Allow GridView to take up only the space it needs
                        children: List.generate(scooters.length, (index) {
                          ScooterAnalysisModel scooter = scooters[index];
                          return ScooterCalculationBox(scooter: scooter);
                        }),
                      ),
                    ],
                  ),
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}




