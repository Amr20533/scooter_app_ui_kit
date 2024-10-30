import 'package:flutter/material.dart';
import 'package:scotter_app_ui_kit/constants.dart';
import 'package:scotter_app_ui_kit/data/scooter_data.dart';
import 'package:scotter_app_ui_kit/layouts/widgets/home/custom_home_scooter_box.dart';
import 'package:scotter_app_ui_kit/layouts/widgets/home/home_user_data_bar.dart';
import 'package:scotter_app_ui_kit/layouts/widgets/home/locked_scooter_bar.dart';
import 'package:scotter_app_ui_kit/layouts/widgets/home/scooter_animated_grid.dart';
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
                child: const SingleChildScrollView(
                  child: Column(
                    children: [
                      HomeUserDataBar(),
                      CustomHomeScooterBox(),
                      LockedScooterBar(),
                      ScooterAnimationGrid(),
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




