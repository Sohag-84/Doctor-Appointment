// ignore_for_file: prefer_const_constructors

import 'package:doctor_appointment/consts/consts.dart';
import 'package:doctor_appointment/consts/fonts.dart';
import 'package:doctor_appointment/resources/components/custom_button.dart';
import 'package:doctor_appointment/resources/components/custom_textfield.dart';
import 'package:get/get.dart';

class SignUPScreen extends StatelessWidget {
  const SignUPScreen({super.key});

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
                title: AppStrings.signupNow,
                size: AppSizes.size18,
                alignment: TextAlign.center,
              ),
              40.heightBox,
              Form(
                child: Column(
                  children: [
                    CustomTextField(hintText: AppStrings.fullName),
                    10.heightBox,
                    CustomTextField(hintText: AppStrings.emailHint),
                    10.heightBox,
                    CustomTextField(hintText: AppStrings.passwordHint),
                    20.heightBox,
                    CustomButton(
                      onTap: () {},
                      buttonText: AppStrings.signup,
                    ),
                    20.heightBox,
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        AppStrings.alreadyHaveAccount.text.make(),
                        8.widthBox,
                        InkWell(
                          onTap: () => Get.back(),
                          child: AppStyles.bold(title: AppStrings.login),
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
