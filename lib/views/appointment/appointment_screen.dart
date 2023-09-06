// ignore_for_file: prefer_const_constructors

import 'package:doctor_appointment/consts/consts.dart';
import 'package:doctor_appointment/consts/fonts.dart';
import 'package:doctor_appointment/views/appointment_details/appointment_details_screen.dart';
import 'package:get/get.dart';

class AppointmentScreen extends StatelessWidget {
  const AppointmentScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: AppStyles.bold(
          title: "Appointments",
          color: AppColors.whiteColor,
          size: AppSizes.size18,
        ),
      ),
      body: ListView.builder(
        itemCount: 18,
        itemBuilder: (context, index) {
          return ListTile(
            onTap: () => Get.to(() => AppointmentDetailsScreen()),
            leading: CircleAvatar(
              child: Image.asset(AppAssets.imgDoctor),
            ),
            title: AppStyles.bold(title: "Doctor Name"),
            subtitle: AppStyles.normal(
              title: "Appointment time",
              color: AppColors.textColor.withOpacity(0.5),
            ),
          );
        },
      ),
    );
  }
}
