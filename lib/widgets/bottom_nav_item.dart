import 'package:daily_exercise_app/constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class BottomNavItem extends StatelessWidget {
  final String svgSrc;
  final String title;
  final Function press;
  final bool isActive;
  const BottomNavItem({
    Key key, this.svgSrc, this.title, this.press, this.isActive = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: <Widget>[
          SvgPicture.asset(
            svgSrc,
            color: isActive ? COLORS['ACTIVE_ICON'] : COLORS['TEXT']
          ),
          Text(
            title,
            style: TextStyle(
              color: isActive ? COLORS['ACTIVE_ICON'] : COLORS['TEXT']
            )
          ),
        ],
      ),
    );
  }
}
