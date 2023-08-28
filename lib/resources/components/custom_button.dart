// ignore_for_file: prefer_const_constructors

import 'package:doctor_appointment/consts/consts.dart';

class CustomButton extends StatelessWidget {
  final Function()? onTap;
  final String buttonText;
  const CustomButton({super.key,required this.onTap,required this.buttonText});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: context.screenWidth,
      height: 44,
      child: ElevatedButton(
        onPressed: onTap,
        style: ElevatedButton.styleFrom(
          shape: StadiumBorder(),
        ),
        child: buttonText.text.make(),
      ),
    );
  }
}
