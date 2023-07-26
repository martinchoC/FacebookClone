import 'package:flutter/material.dart';
import 'package:flutter_facebook_clone/facebook_ui/widgets/avatar.dart';
import 'package:flutter_facebook_clone/models/publication.dart';
import 'package:timeago/timeago.dart' as timeago;
import 'package:cached_network_image/cached_network_image.dart';

class PublicationItem extends StatelessWidget {
  const PublicationItem({
    super.key,
    required this.publication,
  });
  final Publication publication;

  @override
  Widget build(BuildContext context) {
    const padding = EdgeInsets.symmetric(
      horizontal: 20,
      vertical: 10,
    );
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
        ],
      ),
    );
  }
}
