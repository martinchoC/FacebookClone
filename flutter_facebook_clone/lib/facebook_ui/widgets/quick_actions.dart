import 'package:flutter/material.dart';
import 'package:flutter_facebook_clone/facebook_ui/widgets/cicle_button.dart';

import '../../icons/custom_icons.dart';

class QuickActions extends StatelessWidget {
  const QuickActions({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 20),
      child: FittedBox(
        fit: BoxFit.scaleDown,
        alignment: Alignment.centerLeft,
        child: Row(
          children: [
            _QuickButton(
              iconData: CustomIcons.photos,
              color: Color(0xff92BE87),
              label: "Gallery",
            ),
            SizedBox(width: 15),
            _QuickButton(
              iconData: CustomIcons.user_friends,
              color: Color(0xff2880D4),
              label: "Tag Friends",
            ),
            SizedBox(width: 15),
            _QuickButton(
              iconData: CustomIcons.video_camera,
              color: Color(0xffFB7171),
              label: "Live",
            ),
          ],
        ),
      ),
    );
  }
}

class _QuickButton extends StatelessWidget {
  const _QuickButton({
    required this.iconData,
    required this.color,
    required this.label,
  });

  final IconData iconData;
  final Color color;
  final String label;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(
        right: 25,
      ),
      decoration: BoxDecoration(
        color: color.withOpacity(0.2),
        borderRadius: BorderRadius.circular(30),
      ),
      child: Row(
        children: [
          CicleButton(
            color: color.withOpacity(0.6),
            iconData: iconData,
          ),
          const SizedBox(width: 15),
          Text(
            label,
            style: TextStyle(
              color: color,
            ),
          )
        ],
      ),
    );
  }
}
