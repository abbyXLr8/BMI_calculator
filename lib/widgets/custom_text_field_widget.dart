import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({
    super.key,
    required this.controller,
  });
  final TextEditingController controller;
  
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: TextField(
        controller: controller,
        cursorColor: Colors.grey[400],
        decoration: InputDecoration(
          filled: true,
          fillColor: const Color.fromRGBO(204, 244, 248, 1),
          contentPadding: const EdgeInsets.symmetric(horizontal: 22),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12),
            borderSide: const BorderSide(
              color: Color.fromRGBO(204, 244, 248, 1),
            ),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12),
            borderSide: const BorderSide(
              color: Color.fromRGBO(87, 236, 249, 1),
            ),
          ),
        ),
      ),
    );
  }
}