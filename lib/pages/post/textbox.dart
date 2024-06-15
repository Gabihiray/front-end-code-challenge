import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class TextBox extends StatelessWidget {
  final String title;
  const TextBox({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(25.0),
      child: Container(
        child: TextField(
          maxLengthEnforcement: MaxLengthEnforcement.enforced,
          maxLines: 8,
          decoration: InputDecoration(
            contentPadding:
                const EdgeInsets.symmetric(vertical: 10.0, horizontal: 10.0),
            border: OutlineInputBorder(),
            hintText: 'O que está pensando?',
            counterText: title,
          ),
        ),
      ),
    );
  }
}
