import 'package:flutter/material.dart';
import 'package:logindesign/constants/colors.dart';
import 'package:logindesign/constants/font_styles.dart';

class PasswordField extends StatefulWidget {
  final TextEditingController controller;
  final String? hintText;
  const PasswordField({Key? key, required this.controller, this.hintText})
      : super(key: key);

  @override
  State<PasswordField> createState() => _PasswordFieldState();
}

class _PasswordFieldState extends State<PasswordField> {
  var isShowPassword = true;
  @override
  void initState() {
    super.initState();
    isShowPassword = true;
  }

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: widget.controller,
      obscureText: isShowPassword,
      cursorColor: AppColors().blacColor,
      minLines: 1,
      style: AppFontStyle().fieldFontStyle(),
      scrollPadding: const EdgeInsets.all(0),
      decoration: InputDecoration(
        suffixIcon: InkWell(
          onTap: () {
            setState(
              () {
                isShowPassword = !isShowPassword;
              },
            );
          },
          child: Icon(
            isShowPassword == true ? Icons.visibility : Icons.visibility_off,
            color: isShowPassword == false
                ? AppColors().whiteColor
                : AppColors().mainColor,
          ),
        ),
        hintText: widget.hintText ?? "Password",
        hintStyle: AppFontStyle().fieldFontStyle(),
        filled: true,
        fillColor: AppColors().subColor,
        border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: BorderSide.none),
      ),
    );
  }
}
