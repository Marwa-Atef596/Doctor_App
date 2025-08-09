import 'package:doctor_app/core/theming/color_app.dart';
import 'package:doctor_app/core/theming/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class HomeTopBar extends StatelessWidget {
  const HomeTopBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Hi, Omar!',
              style: Styles.font18DarkBlueBold,
            ),
            Text(
              'How Are you Today?',
              style: Styles.font13GrayRegular,
            ),
          ],
        ),
        Spacer(),
        CircleAvatar(
          radius: 24,
          backgroundColor: ColorApp.moreLighterGray,
          child: SvgPicture.asset(
            'assets/svgs/notification.svg',
          ),
        ),
      ],
    );
  }
}
