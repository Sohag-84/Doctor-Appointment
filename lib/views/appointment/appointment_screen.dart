// ignore_for_file: prefer_const_constructors

import 'package:doctor_appointment/consts/consts.dart';
import 'package:doctor_appointment/consts/fonts.dart';
import 'package:doctor_appointment/resources/components/custom_button.dart';
import 'package:doctor_appointment/resources/components/custom_textfield.dart';

class AppointmentScreen extends StatelessWidget {
  const AppointmentScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: AppStyles.bold(
          title: "Doctor Name",
          color: AppColors.whiteColor,
          size: AppSizes.size18,
        ),
      ),
      body: Padding(
        padding: EdgeInsets.all(8),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              AppStyles.bold(title: "Select appointment day"),
              5.heightBox,
              CustomTextField(hintText: "Select day"),
              10.heightBox,
              AppStyles.bold(title: "Select appointment time"),
              5.heightBox,
              CustomTextField(hintText: "Select time"),
              20.heightBox,
              AppStyles.bold(title: "Mobile number"),
              5.heightBox,
              CustomTextField(hintText: "Enter your mobile number"),
              10.heightBox,
              AppStyles.bold(title: "Full Name"),
              5.heightBox,
              CustomTextField(hintText: "Enter your full name"),
              10.heightBox,
              AppStyles.bold(title: "Message"),
              5.heightBox,
              CustomTextField(hintText: "Enter your message"),
            ],
          ),
        ),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(10.0),
        child: CustomButton(
          onTap: () {},
          buttonText: "Book an appointment",
        ),
      ),
    );
  }
}
