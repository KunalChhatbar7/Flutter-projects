// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:logindesign/constants/colors.dart';
import 'package:logindesign/constants/font_styles.dart';
import 'package:logindesign/constants/strings.dart';
import 'package:logindesign/screens/signup_screen/sign_up_screen.dart';
import 'package:logindesign/widgets/password_field.dart';
import 'package:logindesign/widgets/text_field.dart';
import 'package:page_transition/page_transition.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final globalKey = GlobalKey<ScaffoldMessengerState>();
  TextEditingController passwordController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
      resizeToAvoidBottomInset: true,
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Padding(
          padding: EdgeInsets.only(
              top: height * 0.05, left: width * 0.05, right: width * 0.05),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.max,
            children: [
              Align(
                alignment: Alignment.topRight,
                child: InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      PageTransition(
                        child: const SignUpScreen(),
                        type: PageTransitionType.fade,
                        isIos: true,
                        duration: const Duration(milliseconds: 500),
                      ),
                    );
                  },
                  child: Text(
                    AppStr().signUp,
                    style: AppFontStyle().fieldFontStyle(),
                  ),
                ),
              ),
              SizedBox(
                height: height * 0.2,
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.max,
                children: [
                  Text(
                    AppStr().signIn,
                    style: AppFontStyle().titleFontStyle(
                        isBold: true, changeColor: AppColors().blacColor),
                  ),
                  SizedBox(
                    height: height * 0.03,
                  ),
                  Text(
                    AppStr().welcomeBack,
                    style: AppFontStyle().subTitleFontStyle(),
                  ),
                  SizedBox(
                    height: height * 0.03,
                  ),
                  AppTextField(
                    controller: emailController,
                    hintText: AppStr().email,
                  ),
                  SizedBox(
                    height: height * 0.03,
                  ),
                  PasswordField(
                    controller: passwordController,
                  ),
                  SizedBox(
                    height: height * 0.02,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      InkWell(
                        onTap: () {
                          var appSnackBar = SnackBar(
                            backgroundColor: AppColors().subColor,
                            content: Text(
                              AppStr().forgotPassword,
                              style: AppFontStyle().fieldFontStyle(),
                            ),
                          );
                          ScaffoldMessenger.of(context)
                              .showSnackBar(appSnackBar);
                        },
                        child: Text(
                          AppStr().forgotPassword,
                          style: AppFontStyle().fieldFontStyle(),
                        ),
                      ),
                    ],
                  )
                ],
              ),
              SizedBox(
                height: height * 0.2,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    height: height * 0.06,
                    width: width * 0.9,
                    decoration: BoxDecoration(
                      color: AppColors().mainColor,
                      shape: BoxShape.rectangle,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Center(
                      child: Text(
                        AppStr().signIn,
                        style: AppFontStyle().buttonTextStyle(),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: height * 0.02,
              ),
              Row(
                children: [
                  Container(
                    decoration: BoxDecoration(
                      border:
                          Border.all(width: 1, color: AppColors().mainColor),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
