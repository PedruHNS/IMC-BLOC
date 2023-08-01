import 'package:flutter/material.dart';

class Stats extends StatelessWidget {
  final IconData icone;
  final String info;
  const Stats({super.key, required this.info, required this.icone});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(3.0),
      child: SizedBox(
        width: 300,
        height: 50,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(icone),
            SizedBox(
              width: 150,
              child: Text(
                info,
                textAlign: TextAlign.center,
                style: const TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
