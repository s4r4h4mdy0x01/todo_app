import 'package:flutter/material.dart';

class TextIsSign extends StatelessWidget {
  const TextIsSign({
    super.key,
    required this.onpressed,
    required this.textOfType,
  });

  final void Function()? onpressed;
  final String textOfType;

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onpressed,
      child: Text(
        textOfType,
        style: const TextStyle(fontWeight: FontWeight.bold, color: Colors.blue),
      ),
    );
  }
}
