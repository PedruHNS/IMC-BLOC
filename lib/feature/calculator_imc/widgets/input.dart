import 'package:flutter/material.dart';

class InputText extends StatelessWidget {
  final TextEditingController controller;
  final IconData icon;
  final String text;
  const InputText({
    super.key,
    required this.icon,
    required this.text,
    required this.controller,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: TextFormField(
        onTapOutside: (event) => FocusScope.of(context).unfocus(),
        keyboardType: TextInputType.number,
        validator: (String? value) {
          if (value!.isEmpty) {
            return "digite o valor";
          }
          return null;
        },
        controller: controller,
        decoration: InputDecoration(
          border: const OutlineInputBorder(),
          prefixIcon: Icon(icon, color: const Color.fromARGB(255, 0, 114, 207)),
          filled: true,
          fillColor: Colors.white,
          focusedBorder: const OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(20)),
              borderSide: BorderSide(color: Color.fromARGB(255, 22, 119, 199))),
          hintText: text,
        ),
      ),
    );
  }
}
