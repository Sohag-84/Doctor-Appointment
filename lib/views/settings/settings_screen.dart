// ignore_for_file: prefer_const_constructors

import 'package:doctor_appointment/consts/consts.dart';
import 'package:doctor_appointment/consts/fonts.dart';
import 'package:doctor_appointment/consts/list.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        automaticallyImplyLeading: false,
        title: AppStyles.bold(
          title: AppStrings.category,
          size: AppSizes.size18,
          color: AppColors.whiteColor,
        ),
      ),
      body: Column(
        children: [
          ListTile(
            leading: CircleAvatar(
              child: Image.asset(AppAssets.imgDoctor),
            ),
            title: AppStyles.bold(title: "Username"),
            subtitle: AppStyles.normal(title: "user@gmail.com"),
          ),
          Divider(),
          ListView(
            shrinkWrap: true,
            children: List.generate(
              settingsList.length,
              (index) => ListTile(
                onTap: () {},
                leading: Icon(
                  settingsListIcon[index],
                  color: AppColors.blueColor,
                ),
                title: AppStyles.bold(
                  title: settingsList[index],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
