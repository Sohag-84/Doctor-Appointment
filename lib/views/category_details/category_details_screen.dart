// ignore_for_file: prefer_const_constructors

import 'package:doctor_appointment/consts/consts.dart';
import 'package:doctor_appointment/consts/fonts.dart';

class CategoryDetailsScreen extends StatelessWidget {
  const CategoryDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: AppStyles.bold(
          title: "Category Name",
          color: AppColors.whiteColor,
          size: AppSizes.size18,
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: GridView.builder(
          itemCount: 10,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            mainAxisSpacing: 8,
            crossAxisSpacing: 8,
            mainAxisExtent: 170,
          ),
          itemBuilder: (context, index) {
            return Container(
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
                    //width: 120,
                    color: AppColors.blueColor,
                    child: Image.asset(
                      AppAssets.imgDoctor,
                      width: 120,
                      fit: BoxFit.cover,
                    ),
                  ),
                  5.heightBox,
                  AppStyles.normal(title: "Doctor name"),
                  5.heightBox,
                  VxRating(
                    selectionColor: AppColors.yellowColor,
                    onRatingUpdate: (value) {},
                    maxRating: 5,
                    count: 5,
                    value: 4,
                    stepInt: true,
                  ),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
