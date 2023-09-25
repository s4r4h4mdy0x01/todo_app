import 'package:flutter/material.dart';
import 'package:todo_app/const/color.dart';
import 'package:todo_app/widgets/text_is_sign.dart';

class CustomRowText extends StatelessWidget {
  const CustomRowText(
      {super.key,
      required this.text,
      required this.textOfType,
      this.onpressed});
  final String text;
  final String textOfType;
  final void Function()? onpressed;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Text(
          text,
          style:
              const TextStyle(color: colorWidget, fontWeight: FontWeight.w500),
        ),
        TextIsSign(onpressed: onpressed, textOfType: textOfType),
      ],
    );
  }
}
