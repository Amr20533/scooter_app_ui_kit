import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:scotter_app_ui_kit/layouts/widgets/on_boarding/next_page_button.dart';
import 'package:scotter_app_ui_kit/layouts/widgets/on_boarding/onboarding_page_indicator.dart';
import 'package:scotter_app_ui_kit/layouts/widgets/on_boarding/onboarding_page_view.dart';
import 'package:scotter_app_ui_kit/notifiers/boarding_notifier.dart';

class OnBoardingScreen extends StatefulWidget {
  const OnBoardingScreen({super.key});

  @override
  OnBoardingScreenState createState() => OnBoardingScreenState();
}

class OnBoardingScreenState extends State<OnBoardingScreen> {
  final PageController _pageController = PageController();
  int _currentPage = 0;

  @override
  void initState() {
    super.initState();
    _pageController.addListener(() {
      int nextPage = _pageController.page?.round() ?? 0;
      if (nextPage != _currentPage) {
        setState(() {
          _currentPage = nextPage;
        });
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            const Expanded(
              child: OnBoardingPageView(),),
            Consumer<BoardingNotifier>(
            builder: (context, notifier, _){
              return Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30.0, vertical: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    OnBoardingPageIndicator(currentPage: notifier.currentPage),
                    NextPageButton(
                      onTap: (){
                        notifier.nextPage(context);
                      },
                    )
                  ],
                ),
              );
            }
            ),
          ],
        ),
      ),
    );
  }
}



