import 'package:flutter/widgets.dart';
import 'package:scotter_app_ui_kit/data/onboarding_pages_data.dart';
import 'package:scotter_app_ui_kit/layouts/views/home_view.dart';
import 'package:scotter_app_ui_kit/layouts/widgets/common/custom_fade_transition_route.dart';

class BoardingNotifier extends ChangeNotifier{
  late PageController pageController;
  int _currentPage = 0;
  int get currentPage => _currentPage;

  set currentPage(int page){
    _currentPage = page;
    notifyListeners();
  }

  BoardingNotifier(){
    pageController = PageController();
  }

  void nextPage(BuildContext context) {
    if (currentPage < onBoardingPagesData.length - 1) {
      currentPage++;
      pageController.nextPage(
        duration: const Duration(milliseconds: 300),
        curve: Curves.easeInOut,
      );
    }else{
      Navigator.of(context).push(
          customFadeTransitionRoute(const HomeView())
      );
    }
  }

  void previousPage() {
    if (pageController.page!.toInt() > 0) {
      pageController.previousPage(
        duration: const Duration(milliseconds: 300),
        curve: Curves.easeInOut,
      );
    }
  }

  @override
  void dispose() {
    pageController.dispose();
    super.dispose();
  }

}