// ignore_for_file: prefer_const_constructors

import 'package:doctor_appointment/consts/consts.dart';
import 'package:doctor_appointment/consts/fonts.dart';
import 'package:doctor_appointment/consts/list.dart';
import 'package:doctor_appointment/resources/components/custom_textfield.dart';
import 'package:doctor_appointment/views/doctor%20profile/doctor_profile_screen.dart';
import 'package:get/get.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        automaticallyImplyLeading: false,
        title: AppStyles.bold(
          title: "${AppStrings.welcome} User",
          color: AppColors.whiteColor,
          size: AppSizes.size18,
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.all(14),
              height: 90,
              color: AppColors.blueColor,
              child: Row(
                children: [
                  Expanded(
                    child: CustomTextField(
                      hintText: AppStrings.searchDoctor,
                      textColor: AppColors.whiteColor,
                      borderColor: AppColors.whiteColor,
                    ),
                  ),
                  10.widthBox,
                  IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.search,
                      color: AppColors.whiteColor,
                    ),
                  ),
                ],
              ),
            ),
            20.heightBox,
            Padding(
              padding: EdgeInsets.all(10.0),
              child: Column(
                children: [
                  SizedBox(
                    height: 80,
                    child: ListView.builder(
                      itemCount: iconList.length,
                      scrollDirection: Axis.horizontal,
                      physics: BouncingScrollPhysics(),
                      itemBuilder: (context, index) {
                        return InkWell(
                          onTap: () {},
                          child: Container(
                            margin: EdgeInsets.only(right: 8),
                            padding: EdgeInsets.all(12),
                            decoration: BoxDecoration(
                              color: AppColors.blueColor,
                              borderRadius: BorderRadius.circular(12),
                            ),
                            child: Column(
                              children: [
                                Image.asset(
                                  iconList[index],
                                  width: 30,
                                  color: AppColors.whiteColor,
                                ),
                                5.heightBox,
                                AppStyles.normal(
                                  title: iconsTitleList[index],
                                  color: AppColors.whiteColor,
                                ),
                              ],
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                  20.heightBox,
                  Align(
                    alignment: Alignment.centerLeft,
                    child: AppStyles.bold(
                      title: "Popular Doctors",
                      color: AppColors.blueColor,
                      size: AppSizes.size18,
                    ),
                  ),
                  10.heightBox,
                  SizedBox(
                    height: 150,
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      physics: BouncingScrollPhysics(),
                      itemCount: 3,
                      itemBuilder: (context, index) {
                        return InkWell(
                          onTap: () {
                            Get.to(() => DoctorProfileScreen());
                          },
                          child: Container(
                            height: 100,
                            width: 150,
                            clipBehavior: Clip.hardEdge,
                            decoration: BoxDecoration(
                              color: AppColors.bgDarkColor,
                              borderRadius: BorderRadius.circular(12),
                            ),
                            margin: EdgeInsets.only(right: 8),
                            child: Column(
                              children: [
                                Container(
                                  alignment: Alignment.center,
                                  width: 150,
                                  color: AppColors.blueColor,
                                  child: Image.asset(
                                    AppAssets.imgDoctor,
                                    width: 100,
                                    fit: BoxFit.cover,
                                  ),
                                ),
                                5.heightBox,
                                AppStyles.normal(title: "Doctor name"),
                                5.heightBox,
                                AppStyles.normal(
                                  title: "Category name",
                                  color: Colors.black54,
                                ),
                              ],
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                  5.heightBox,
                  InkWell(
                    onTap: () {},
                    child: Align(
                      alignment: Alignment.centerRight,
                      child: AppStyles.normal(
                        title: "View All",
                        color: AppColors.blueColor,
                      ),
                    ),
                  ),
                  20.heightBox,
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: List.generate(
                      4,
                      (index) => Container(
                        padding: EdgeInsets.all(12),
                        decoration: BoxDecoration(
                          color: AppColors.blueColor,
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: Column(
                          children: [
                            Image.asset(
                              AppAssets.icBody,
                              width: 25,
                              color: AppColors.whiteColor,
                            ),
                            5.heightBox,
                            AppStyles.normal(
                              title: "Lab Test",
                              color: AppColors.whiteColor,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
