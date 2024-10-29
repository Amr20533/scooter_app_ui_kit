import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

AppBar customNavigatorAppBar(BuildContext context) {
  return AppBar(
    backgroundColor: Colors.transparent,
    leading: const SizedBox(),
    actions: [
      Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        child: IconButton(
            onPressed: (){
              Navigator.pop(context);
            },
            icon: SvgPicture.asset('assets/icons/close.svg')),
      )
    ],
  );
}
