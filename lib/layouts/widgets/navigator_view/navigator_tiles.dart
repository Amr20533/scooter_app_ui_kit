import 'package:flutter/material.dart';
import 'package:scotter_app_ui_kit/constants.dart';
import 'package:scotter_app_ui_kit/layouts/widgets/common/custom_title_text.dart';

class NavigatorTiles extends StatefulWidget {
  const NavigatorTiles({super.key});

  @override
  NavigatorTilesState createState() => NavigatorTilesState();
}

class NavigatorTilesState extends State<NavigatorTiles> {
  final GlobalKey<AnimatedListState> _listKey = GlobalKey<AnimatedListState>();
  final List<String> pages = [
    "Home",
    "Profile",
    "Travel History",
    "Settings",
    "Help",
    "Privacy Policy",
    "Terms & Conditions",
    "Logout",
  ];

  int selectedIndex = 0;

  @override
  void initState() {
    super.initState();
    _animatedContent();
  }

  _animatedContent() {
    for(int i = 0; i < pages.length; i++) {
      Future.delayed(Duration(milliseconds: i * 100), () {
        _listKey.currentState?.insertItem(i);
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(
          width: 190,
          height: 412,
          child: AnimatedList(
            key: _listKey,
            padding: EdgeInsets.zero,
            initialItemCount: 0,
            itemBuilder: (context, index, animation){
            return _buildListItem(index, animation);
          }),
        ),
      ],
    );
  }

  Widget _buildListItem(int index, Animation<double> animation) {
    return SizeTransition(
      sizeFactor: animation,
          child: GestureDetector(
                onTap: () {
                  setState(() {
                    if(index < pages.length - 1){
                      selectedIndex = index;
                    }
                  });
                },
                child: AnimatedContainer(
                  duration: const Duration(milliseconds: 300),
                  curve: Curves.decelerate,
                  height: 33,
                  padding: const EdgeInsets.only(left: 26),
                  margin: const EdgeInsets.symmetric(vertical: 8),
                  decoration: BoxDecoration(
                    border: Border(
                      left: BorderSide(
                        width: 4,
                        color: selectedIndex == index
                            ? kPrimaryColor
                            : Colors.transparent,
                      ),
                    ),
                  ),
                  child: CustomTitleText(
                    text: pages[index],
                    fontWeight: selectedIndex == index ? FontWeight.w900 : FontWeight.w400,
                    color: Colors.white,
                  ),
                ),
              ),
    );

  }
}
