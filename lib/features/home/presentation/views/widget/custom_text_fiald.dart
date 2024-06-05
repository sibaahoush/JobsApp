import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({
    super.key,
    required this.hint,
    this.max = 1,
    this.fillColor = Colors.white,
    this.icon,
    required this.controller,
  });
  final String hint;
  final int max;
  final Color fillColor;
  final IconData? icon;
  final TextEditingController controller;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      validator: (value) {
        if (value!.isEmpty) {
          return 'Field is required';
        }
        return null;
      },
      cursorColor: Colors.white,
      maxLines: max,
      decoration: InputDecoration(
          fillColor: fillColor,
          filled: true,
          label: Row(
            children: [
              Icon(
                icon,
                size: 14,
                color: Colors.blueGrey,
              ),
              const SizedBox(
                width: 8,
              ),
              Text(
                hint,
                style: TextStyle(fontSize: 12),
              )
            ],
          ),
          border: buildborder(),
          enabledBorder: buildborder(),
          focusedBorder: buildborder(Colors.blue)),
    );
  }

  OutlineInputBorder buildborder([color]) {
    return OutlineInputBorder(
        borderRadius: BorderRadius.circular(16),
        borderSide: BorderSide(color: color ?? Colors.white));
  }
}
