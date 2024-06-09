import 'package:flutter/material.dart';

class CustomTextFormField extends StatelessWidget {
  final String text;
  final void Function()? onPressed;
  final IconData? suffixIcon;
  final bool obscureText;
  final Function validator;
  final bool isNumber;
  final TextEditingController? controller;

  const CustomTextFormField({
    required this.text,
    this.onPressed,
    this.suffixIcon,
    required this.obscureText,
    required this.validator,
    required this.isNumber,
    this.controller,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300,
      height: 55,
      padding: const EdgeInsets.fromLTRB(20, 5, 20, 5),
      decoration: BoxDecoration(
        color: const Color(0x99FFFFFF),
        borderRadius: BorderRadius.circular(30),
      ),
      child: Row(
        children: [
          InkWell(
            onTap: onPressed,
            child: Icon(
              suffixIcon,
              color: Colors.blue,
            ),
          ),
          Expanded(
            child: TextFormField(
              onTapOutside: (event) {
                FocusManager.instance.primaryFocus?.unfocus();
              },
              obscureText: obscureText,
              keyboardType: isNumber
                  ? const TextInputType.numberWithOptions(decimal: true)
                  : TextInputType.text,
              cursorColor: const Color(0xff071947),
              textDirection: TextDirection.rtl,
              controller: controller,
              validator: (value) => validator(value),
              decoration: InputDecoration(
                hintText: text,
                suffixIconConstraints: const BoxConstraints(minWidth: 40),
                hintTextDirection: TextDirection.rtl,
                hintStyle: const TextStyle(
                  color: Color(0xff071947),
                ),
                border: InputBorder.none, // Remove underline
                contentPadding: const EdgeInsets.symmetric(vertical: 15),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
