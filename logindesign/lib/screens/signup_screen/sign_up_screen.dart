import 'package:flutter/material.dart';
import 'package:logindesign/constants/colors.dart';
import 'package:logindesign/constants/font_styles.dart';
import 'package:logindesign/constants/strings.dart';
import 'package:logindesign/login_screen.dart';
import 'package:logindesign/widgets/password_field.dart';
import 'package:logindesign/widgets/text_field.dart';
import 'package:page_transition/page_transition.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  TextEditingController emailController = TextEditingController();

  TextEditingController passwordController = TextEditingController();

  TextEditingController fullNameController = TextEditingController();

  TextEditingController rePasswordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
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
                    Navigator.pushReplacement(
                      context,
                      PageTransition(
                        child: const LoginScreen(),
                        type: PageTransitionType.fade,
                        isIos: true,
                        duration: const Duration(milliseconds: 500),
                      ),
                    );
                  },
                  child: Text(
                    AppStr().signIn,
                    style: AppFontStyle().fieldFontStyle(),
                  ),
                ),
              ),
              SizedBox(
                height: height * 0.16,
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.max,
                children: [
                  Text(
                    AppStr().signUp,
                    style: AppFontStyle().titleFontStyle(
                        isBold: true, changeColor: AppColors().blacColor),
                  ),
                  SizedBox(
                    height: height * 0.03,
                  ),
                  Text(
                    AppStr().createAccount,
                    style: AppFontStyle().subTitleFontStyle(),
                  ),
                  SizedBox(
                    height: height * 0.03,
                  ),
                  AppTextField(
                    controller: fullNameController,
                    hintText: AppStr().fullName,
                    isIconVisibal: false,
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
                    height: height * 0.03,
                  ),
                  PasswordField(
                    controller: rePasswordController,
                    hintText: AppStr().rePassword,
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
                height: height * 0.1,
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
                        AppStr().signUp,
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
