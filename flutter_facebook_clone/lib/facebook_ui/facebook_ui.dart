import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_facebook_clone/facebook_ui/widgets/cicle_button.dart';
import 'package:flutter_facebook_clone/icons/custom_icons.dart';
import 'package:flutter_svg/flutter_svg.dart';

class FacebookUI extends StatelessWidget {
  const FacebookUI({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        systemOverlayStyle: const SystemUiOverlayStyle(
          statusBarBrightness: Brightness.light,
        ),
        leadingWidth: 150,
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: SvgPicture.asset('assets/logos/facebook.svg',
        color: Colors.blueAccent,
        width:150,),
        actions: const [
          CicleButton(color: Color(0xffBFBFBF), iconData: CustomIcons.search),
          SizedBox(width: 15),
          CicleButton(color: Color(0xffFE7574), iconData: CustomIcons.bell),
          SizedBox(width: 15),
          CicleButton(color: Color(0xff7BBAFF), iconData: CustomIcons.user_friends, showBadge: true,),
          SizedBox(width: 15),
          CicleButton(color: Color(0xff4C86E4), iconData: CustomIcons.messenger),
          SizedBox(width: 15),
        ],
        ),
    );
  }
}
