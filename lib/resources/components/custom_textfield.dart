// ignore_for_file: prefer_const_constructors

import 'package:doctor_appointment/consts/consts.dart';

class CustomTextField extends StatefulWidget {
  final String hintText;
  final TextEditingController? textController;
  final Color textColor;
  final Color borderColor;
  const CustomTextField({
    super.key,
    this.textController,
    required this.hintText,
    this.textColor = Colors.black,
    this.borderColor = Colors.black,
  });

  @override
  State<CustomTextField> createState() => _CustomTextFieldState();
}

class _CustomTextFieldState extends State<CustomTextField> {
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      cursorColor: AppColors.blueColor,
      controller: widget.textController,
      decoration: InputDecoration(
        isDense: true,
        hintText: widget.hintText,
        hintStyle: TextStyle(
          color: widget.textColor,
        ),
        border: OutlineInputBorder(
          borderSide: BorderSide(
            color: widget.borderColor,
          ),
        ),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: widget.borderColor,
          ),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: widget.borderColor,
          ),
        ),
      ),
    );
  }
}
