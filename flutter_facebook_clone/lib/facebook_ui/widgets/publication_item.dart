import 'package:flutter/material.dart';
import 'package:flutter_facebook_clone/facebook_ui/widgets/avatar.dart';
import 'package:flutter_facebook_clone/models/publication.dart';
import 'package:timeago/timeago.dart' as timeago;
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter_svg/flutter_svg.dart';

class PublicationItem extends StatelessWidget {
  const PublicationItem({
    super.key,
    required this.publication,
  });
  final Publication publication;

  String _getEmojiPath(Reaction reaction) {
    switch (reaction) {
      case Reaction.like:
        return 'assets/emojis/like.svg';
      case Reaction.love:
        return 'assets/emojis/heart.svg';
      case Reaction.laughing:
        return 'assets/emojis/laughing.svg';
      case Reaction.sad:
        return 'assets/emojis/sad.svg';
      case Reaction.shocking:
        return 'assets/emojis/shocked.svg';
      case Reaction.angry:
        return 'assets/emojis/angry.svg';
    }
  }

  @override
  Widget build(BuildContext context) {
    const padding = EdgeInsets.symmetric(
      horizontal: 20,
      vertical: 10,
    );
    const reactions = Reaction.values;
    return Container(
      width: double.infinity,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: padding,
            child: Row(
              children: [
                const Avatar(
                  size: 38,
                  asset: 'assets/users/1.jpg',
                  borderWidth: 0,
                ),
                const SizedBox(width: 10),
                Text(publication.user.username),
                const Spacer(),
                Text(timeago.format(publication.createdAt)),
              ],
            ),
          ),
          CachedNetworkImage(
            imageUrl: publication.imageURL,
            width: double.infinity,
            height: 180,
            fit: BoxFit.cover,
          ),
          Padding(
            padding: padding.copyWith(top: 15),
            child: Text(
              publication.title,
            ),
          ),
          Row(
            children: [
              ...List.generate(
                reactions.length,
                (index) {
                  final reaction = reactions[index];
                  return SvgPicture.asset(
                    _getEmojiPath(reaction),
                    width: 30,
                    height: 30,
                  );
                },
              ),
            ],
          ),
        ],
      ),
    );
  }
}
