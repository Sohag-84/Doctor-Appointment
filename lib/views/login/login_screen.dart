// ignore_for_file: prefer_const_constructors

import 'package:doctor_appointment/consts/consts.dart';
import 'package:doctor_appointment/consts/fonts.dart';
import 'package:doctor_appointment/resources/components/custom_button.dart';
import 'package:doctor_appointment/resources/components/custom_textfield.dart';
import 'package:doctor_appointment/views/home/home.dart';
import 'package:doctor_appointment/views/sign_up/signup_screen.dart';
import 'package:get/get.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.all(8),
        alignment: Alignment.center,
        child: SingleChildScrollView(
          child: Column(
            children: [
              Image.asset(
                AppAssets.icLogin,
                width: 250,
              ),
              10.heightBox,
              AppStyles.bold(
                title: AppStrings.welcomeBack,
                size: AppSizes.size18,
              ),
              AppStyles.bold(title: AppStrings.weAreExcited),
              40.heightBox,
              Form(
                child: Column(
                  children: [
                    CustomTextField(hintText: AppStrings.emailHint),
                    10.heightBox,
                    CustomTextField(hintText: AppStrings.passwordHint),
                    20.heightBox,
                    Align(
                      alignment: Alignment.centerRight,
                      child: AppStrings.forgotPassword.text.make(),
                    ),
                    20.heightBox,
                    CustomButton(
                      onTap: () {
                        Get.to(() => Home());
                      },
                      buttonText: AppStrings.login,
                    ),
                    20.heightBox,
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        AppStrings.dontHaveAccount.text.make(),
                        8.widthBox,
                        InkWell(
                          onTap: () => Get.to(() => SignUPScreen()),
                          child: AppStyles.bold(title: AppStrings.signup),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
