import 'package:flutter/material.dart';

class CustomAuthTextFild extends StatefulWidget {
  const CustomAuthTextFild({
    super.key,
    required this.hintText,
    required this.labelText,
    this.suffixIcon,
    this.obscureText = false,
    this.isPassword = false,
  });
  final String hintText;
  final String labelText;
  final Widget? suffixIcon;
  final bool obscureText;
  final bool isPassword;

  @override
  State<CustomAuthTextFild> createState() => _CustomAuthTextFildState();
}

class _CustomAuthTextFildState extends State<CustomAuthTextFild> {
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      obscureText: widget.obscureText,

      cursorColor: const Color(0xff434C6D),
      validator: (value) {
        if (value == null || value.isEmpty) {
          return 'This fild is requird';
        }
        return null;
      },
      decoration: InputDecoration(
        suffixIcon: Padding(
          padding: const EdgeInsets.only(right: 16),
          child: IconButton(
            onPressed: () {},
            icon: Container(),
          ),
        ),

        hintText: widget.hintText,
        labelText: widget.labelText,
      ),
    );
  }
}






