import 'package:flutter/material.dart';
import 'package:flutter_facebook_clone/models/publication.dart';

class PublicationItem extends StatelessWidget {
  const PublicationItem({
    super.key,
    required this.publication,
  });
  final Publication publication;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      color: Colors.grey,
    );
  }
}
