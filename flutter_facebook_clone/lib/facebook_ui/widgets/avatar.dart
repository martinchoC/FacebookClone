import 'package:flutter/material.dart';
import 'package:cached_network_image/cached_network_image.dart';

class Avatar extends StatelessWidget {
  final double size;
  final String asset;
  final double borderWidth;
  const Avatar(
      {super.key,
      required this.size,
      required this.asset,
      required this.borderWidth});

  @override
  Widget build(BuildContext context) {
    final bool fromNetwork =
        asset.startsWith("http://") || asset.startsWith("https://");
    final imageProvider = fromNetwork
        ? CachedNetworkImageProvider(
            asset,
          )
        : AssetImage(asset);
    return Container(
      width: size,
      height: size,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        border: Border.all(
          width: borderWidth,
          color: Colors.white,
        ),
        image: DecorationImage(
            image: imageProvider as ImageProvider, fit: BoxFit.cover),
      ),
    );
  }
}
