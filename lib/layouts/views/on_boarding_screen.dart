import 'package:flutter/material.dart';
import 'package:scotter_app_ui_kit/data/onboarding_pages_data.dart';
import 'package:scotter_app_ui_kit/layouts/views/home_view.dart';
import 'package:scotter_app_ui_kit/layouts/widgets/on_boarding/next_page_button.dart';
import 'package:scotter_app_ui_kit/layouts/widgets/on_boarding/onboarding_page_indicator.dart';
import 'package:scotter_app_ui_kit/layouts/widgets/on_boarding/onboarding_page_view.dart';

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
            Expanded(
              child: PageView.builder(
                controller: _pageController,
                physics: const NeverScrollableScrollPhysics(),
                onPageChanged: (index) {
                  setState(() {
                    _currentPage = index;
                  });
                },
                itemCount: onBoardingPagesData.length,
                itemBuilder: (context, index) {
                  return OnBoardingPageView(onBoardingData: onBoardingPagesData[index],);
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30.0, vertical: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  OnBoardingPageIndicator(currentPage: _currentPage),
                  NextPageButton(
                    onTap: (){
                    if (_currentPage < onBoardingPagesData.length - 1) {
                      _pageController.animateToPage(
                        _currentPage += 1,
                        duration: const Duration(milliseconds: 300),
                        curve: Curves.easeIn,
                      );
                    } else {
                      Navigator.of(context).push(MaterialPageRoute(builder: (context) => const HomeView()));
                    }
                  },),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}



