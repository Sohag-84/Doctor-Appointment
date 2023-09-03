// ignore_for_file: prefer_const_constructors

import 'package:doctor_appointment/consts/consts.dart';
import 'package:doctor_appointment/consts/fonts.dart';
import 'package:doctor_appointment/resources/components/custom_button.dart';

class DoctorProfileScreen extends StatelessWidget {
  const DoctorProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.bgDarkColor,
      appBar: AppBar(
        elevation: 0,
        title: AppStyles.bold(
          title: "Doctor Name",
          color: AppColors.whiteColor,
          size: AppSizes.size18,
        ),
      ),
      body: Padding(
        padding: EdgeInsets.all(10.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                height: 100,
                padding: EdgeInsets.all(12),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Row(
                  children: [
                    CircleAvatar(
                      radius: 40,
                      child: Image.asset(AppAssets.imgDoctor),
                    ),
                    12.widthBox,
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          AppStyles.bold(
                            title: "Doctor Name",
                            color: AppColors.textColor,
                            size: AppSizes.size14,
                          ),
                          AppStyles.bold(
                            title: "Category",
                            color: AppColors.textColor.withOpacity(0.5),
                            size: AppSizes.size12,
                          ),
                          Spacer(),
                          VxRating(
                            onRatingUpdate: (value) {},
                            selectionColor: AppColors.yellowColor,
                            count: 5,
                            maxRating: 5,
                            value: 4,
                            stepInt: true,
                          ),
                        ],
                      ),
                    ),
                    AppStyles.bold(
                      title: "See all reviews",
                      color: AppColors.blueColor,
                      size: AppSizes.size12,
                    ),
                  ],
                ),
              ),
              10.heightBox,
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  color: AppColors.whiteColor,
                ),
                child: Column(
                  children: [
                    ListTile(
                      title: AppStyles.bold(
                        title: "Phone Number",
                        color: AppColors.textColor,
                      ),
                      subtitle: AppStyles.normal(
                        title: "+880 1316255373",
                        color: AppColors.textColor.withOpacity(0.5),
                        size: AppSizes.size12,
                      ),
                      trailing: Container(
                        width: 50,
                        padding: EdgeInsets.all(8),
                        decoration: BoxDecoration(
                          color: AppColors.yellowColor,
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: Icon(
                          Icons.phone,
                          color: AppColors.whiteColor,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              10.heightBox,
              Container(
                width: double.infinity,
                padding: EdgeInsets.all(12),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  color: AppColors.whiteColor,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    10.heightBox,
                    AppStyles.bold(
                      title: "About",
                      color: AppColors.textColor,
                      size: AppSizes.size16,
                    ),
                    5.heightBox,
                    AppStyles.normal(
                      title: "This is the about section of a doctor",
                      color: AppColors.textColor.withOpacity(0.5),
                      size: AppSizes.size12,
                    ),
                    10.heightBox,
                    AppStyles.bold(
                      title: "Address",
                      color: AppColors.textColor,
                      size: AppSizes.size16,
                    ),
                    5.heightBox,
                    AppStyles.normal(
                      title: "Address of the doctor",
                      color: AppColors.textColor.withOpacity(0.5),
                      size: AppSizes.size12,
                    ),
                    10.heightBox,
                    AppStyles.bold(
                      title: "Working Time",
                      color: AppColors.textColor,
                      size: AppSizes.size16,
                    ),
                    5.heightBox,
                    AppStyles.normal(
                      title: "9:00 AM - 12:30 PM",
                      color: AppColors.textColor.withOpacity(0.5),
                      size: AppSizes.size12,
                    ),
                    10.heightBox,
                    AppStyles.bold(
                      title: "Services",
                      color: AppColors.textColor,
                      size: AppSizes.size16,
                    ),
                    5.heightBox,
                    AppStyles.normal(
                      title: "This is the service section of a doctor",
                      color: AppColors.textColor.withOpacity(0.5),
                      size: AppSizes.size12,
                    ),
                  ],
                ),
              ),
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
