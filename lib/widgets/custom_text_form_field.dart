import 'package:flutter/material.dart';
import 'package:todo_app/const/color.dart';

class CustomTextFormField extends StatelessWidget {
  const CustomTextFormField(
      {super.key,
      required this.hint,
      required this.icon,
      required this.typeInput,
      this.onseved,
      this.onChanged,
      this.suffixIcon});
  final String hint;
  final IconData icon;
  final Function(String?)? onseved;
  final Function(String?)? onChanged;
  final TextInputType typeInput;
  final Widget? suffixIcon;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      keyboardType: typeInput,
      onChanged: onChanged,
      onSaved: onseved,
      decoration: InputDecoration(
        suffixIcon: suffixIcon,
        hintText: hint,
        hintStyle: const TextStyle(
          color: colorWidget,
          fontWeight: FontWeight.w400,
        ),
        prefixIcon: Icon(
          icon,
          color: colorWidget,
          size: 26,
        ),
        border: outlineInputBorder(),
        focusedBorder: outlineInputBorder(customGreen),
      ),
    );
  }

  OutlineInputBorder outlineInputBorder([color]) {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(8),
      borderSide: BorderSide(color: color ?? colorWidget),
    );
  }
}
