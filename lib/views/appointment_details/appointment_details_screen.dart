// ignore_for_file: prefer_const_constructors

import 'package:doctor_appointment/consts/consts.dart';
import 'package:doctor_appointment/consts/fonts.dart';

class AppointmentDetailsScreen extends StatelessWidget {
  const AppointmentDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: AppStyles.bold(
          title: "Doctor name",
          color: AppColors.whiteColor,
          size: AppSizes.size18,
        ),
      ),
      body: Padding(
        padding: EdgeInsets.all(10.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              AppStyles.bold(title: "Select appointment day"),
              5.heightBox,
              AppStyles.normal(title: "Selected day"),
              10.heightBox,
              AppStyles.bold(title: "Selected time"),
              5.heightBox,
              AppStyles.normal(title: "Select time"),
              20.heightBox,
              AppStyles.bold(title: "Mobile number"),
              5.heightBox,
              AppStyles.normal(title: "Mobile number"),
              10.heightBox,
              AppStyles.bold(title: "Full Name"),
              5.heightBox,
              AppStyles.normal(title: "Name"),
              10.heightBox,
              AppStyles.bold(title: "Message"),
              5.heightBox,
              AppStyles.normal(title: "Message"),
            ],
          ),
        ),
      ),
    );
  }
}
