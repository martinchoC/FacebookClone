import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_facebook_clone/facebook_ui/widgets/cicle_button.dart';
import 'package:flutter_facebook_clone/facebook_ui/widgets/quick_actions.dart';
import 'package:flutter_facebook_clone/facebook_ui/widgets/stories.dart';
import 'package:flutter_facebook_clone/facebook_ui/widgets/what_is_on_your_mind.dart';
import 'package:flutter_facebook_clone/icons/custom_icons.dart';
import 'package:flutter_facebook_clone/models/publication.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:faker/faker.dart';

class FacebookUI extends StatelessWidget {
  const FacebookUI({super.key});

  @override
  Widget build(BuildContext context) {
    final faker = Faker();
    final publications = <Publication>[];
    for (var i = 0; i < 50; i++) {
      final random = faker.randomGenerator;
      const reactions = Reaction.values;
      final reactionIndex = random.integer(reactions.length - 1);
      final publication = Publication(
        user: User(
          avatar: faker.image.image(),
          username: faker.person.name(),
        ),
        title: faker.lorem.sentence(),
        createdAt: faker.date.dateTime(),
        imageURL: faker.image.image(),
        commentsCount: random.integer(50000),
        sharedCount: random.integer(50000),
        currentUserReaction: reactions[reactionIndex],
      );
      publications.add(publication);
    }
    return Scaffold(
      appBar: AppBar(
        systemOverlayStyle: const SystemUiOverlayStyle(
          statusBarBrightness: Brightness.light,
        ),
        leadingWidth: 150,
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: SvgPicture.asset(
          'assets/logos/facebook.svg',
          colorFilter:
              const ColorFilter.mode(Colors.blueAccent, BlendMode.srcIn),
          width: 150,
        ),
        actions: const [
          CicleButton(color: Color(0xffBFBFBF), iconData: CustomIcons.search),
          SizedBox(width: 15),
          CicleButton(color: Color(0xffFE7574), iconData: CustomIcons.bell),
          SizedBox(width: 15),
          CicleButton(
            color: Color(0xff7BBAFF),
            iconData: CustomIcons.user_friends,
            showBadge: true,
          ),
          SizedBox(width: 15),
          CicleButton(
              color: Color(0xff4C86E4), iconData: CustomIcons.messenger),
          SizedBox(width: 15),
        ],
      ),
      body: ListView(
        children: const [
          SizedBox(height: 10),
          WhatIsOnYourMind(),
          SizedBox(height: 30),
          QuickActions(),
          SizedBox(height: 30),
          Stories(),
        ],
      ),
    );
  }
}
