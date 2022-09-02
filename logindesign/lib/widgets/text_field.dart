import 'package:flutter/material.dart';
import 'package:logindesign/constants/colors.dart';
import 'package:logindesign/constants/font_styles.dart';

class AppTextField extends StatefulWidget {
  final String hintText;
  final TextEditingController controller;
  final bool? isIconVisibal;
  const AppTextField(
      {Key? key,
      required this.hintText,
      required this.controller,
      this.isIconVisibal})
      : super(key: key);

  @override
  State<AppTextField> createState() => _AppTextFieldState();
}

class _AppTextFieldState extends State<AppTextField> {
  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: widget.controller,
      cursorColor: AppColors().blacColor,
      scrollPadding: const EdgeInsets.all(0),
      style: AppFontStyle().fieldFontStyle(),
      maxLines: 1,
      decoration: InputDecoration(
        suffixIcon: widget.isIconVisibal == false
            ? Container(
                width: 0,
                height: 0,
              )
            : Icon(
                Icons.email,
                color: AppColors().mainColor,
              ),
        hintText: widget.hintText,
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
