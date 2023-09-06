// ignore_for_file: prefer_const_constructors

import 'package:doctor_appointment/consts/fonts.dart';
import 'package:doctor_appointment/consts/list.dart';
import 'package:doctor_appointment/views/category_details/category_details_screen.dart';
import 'package:get/get.dart';

import '../../consts/consts.dart';

class CategoryScreen extends StatelessWidget {
  const CategoryScreen({super.key});

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
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: GridView.builder(
          physics: BouncingScrollPhysics(),
          itemCount: iconList.length,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            mainAxisSpacing: 8,
            crossAxisSpacing: 8,
            mainAxisExtent: 170,
          ),
          itemBuilder: (context, index) {
            return InkWell(
              onTap: () => Get.to(() => CategoryDetailsScreen()),
              child: Container(
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  color: AppColors.blueColor,
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Align(
                      alignment: Alignment.center,
                      child: Image.asset(
                        iconList[index],
                        width: 60,
                        color: AppColors.whiteColor,
                      ),
                    ),
                    Divider(color: AppColors.whiteColor),
                    20.heightBox,
                    AppStyles.bold(
                      title: iconsTitleList[index],
                      color: AppColors.whiteColor,
                      size: AppSizes.size16,
                    ),
                    10.heightBox,
                    AppStyles.normal(
                      title: "13 specialists",
                      color: AppColors.whiteColor.withOpacity(0.5),
                      size: AppSizes.size12,
                    ),
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
