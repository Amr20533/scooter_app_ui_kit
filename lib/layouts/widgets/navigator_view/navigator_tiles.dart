import 'package:flutter/material.dart';
import 'package:scotter_app_ui_kit/constants.dart';
import 'package:scotter_app_ui_kit/layouts/widgets/common/custom_title_text.dart';

class NavigatorTiles extends StatefulWidget {
  const NavigatorTiles({super.key});

  @override
  NavigatorTilesState createState() => NavigatorTilesState();
}

class NavigatorTilesState extends State<NavigatorTiles> {

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
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(
          width: 190,
          height: 412,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: List.generate(pages.length, (index) {
              return GestureDetector(
                onTap: () {
                  setState(() {
                    if(index < pages.length - 1){
                      selectedIndex = index;
                    }
                  });
                },
                child: Container(
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
              );
            }),
          ),
        ),
      ],
    );
  }
}
