// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import 'package:imc/feature/calculator_imc/widgets/stats.dart';

class InfoStats extends StatelessWidget {
  const InfoStats({
    Key? key,
    required this.iconImc,
    required this.imcValue,
    required this.descriptionValue,
    required this.descriptionIcon,
  }) : super(key: key);

  final IconData iconImc;
  final String imcValue;

  final String descriptionValue;
  final IconData descriptionIcon;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        decoration: const BoxDecoration(
            gradient: LinearGradient(
                colors: [
                  Color.fromARGB(255, 95, 176, 241),
                  Color.fromARGB(255, 63, 160, 240),
                  Color.fromARGB(255, 0, 138, 252),
                ],
                begin: Alignment.topCenter,
                stops: [0.19, 0.50, 1]),
            borderRadius: BorderRadius.all(Radius.circular(20)),
            boxShadow: [
              BoxShadow(
                blurRadius: 1,
                spreadRadius: 1,
                offset: Offset(1, 1),
              ),
            ]),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: [
            Stats(
              info: imcValue,
              icone: iconImc,
            ),
            Stats(
              icone: descriptionIcon,
              info: descriptionValue,
            ),
          ],
        ),
      ),
    );
  }
}
