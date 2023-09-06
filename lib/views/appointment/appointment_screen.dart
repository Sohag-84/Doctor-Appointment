import 'package:doctor_appointment/consts/consts.dart';
import 'package:doctor_appointment/consts/fonts.dart';

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
