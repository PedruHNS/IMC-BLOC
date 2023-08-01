// ignore_for_file: public_member_api_docs, sort_constructors_first

import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final VoidCallback action;
  final IconData icon;
  final String label;
  const CustomButton({
    Key? key,
    required this.action,
    required this.icon,
    required this.label,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: ElevatedButton.icon(
        style: const ButtonStyle(
          backgroundColor: MaterialStatePropertyAll(Colors.blue),
          iconColor: MaterialStatePropertyAll(Colors.white),
        ),
        onPressed: action,
        icon: Icon(icon),
        label: Text(
          label,
          style: const TextStyle(color: Colors.white),
        ),
      ),
    );
  }
}
