// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class ImageWeight extends StatelessWidget {
  final String image;
  final double size;
  const ImageWeight({
    Key? key,
    required this.size,
    required this.image,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(100),
      child: Container(
        width: size,
        height: size,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
              colors: [
                Color.fromARGB(255, 95, 176, 241),
                Color.fromARGB(255, 63, 160, 240),
                Color.fromARGB(255, 0, 138, 252),
              ],
              begin: Alignment.topCenter,
              stops: [0.19, 0.50, 1]),
        ),
        child: Image.asset(image, fit: BoxFit.cover),
      ),
    );
  }
}
