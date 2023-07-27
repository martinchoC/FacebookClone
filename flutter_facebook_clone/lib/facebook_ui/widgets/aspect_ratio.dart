import 'package:flutter/material.dart';

class MyAspectRatio extends StatelessWidget {
  const MyAspectRatio({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: AspectRatio(
          aspectRatio: 16 / 9,
          child: Image.network(
            'https://i.ex-cdn.com/mgn.vn/files/content/2023/01/29/pokemon-pikachu-2237.jpg',
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}
