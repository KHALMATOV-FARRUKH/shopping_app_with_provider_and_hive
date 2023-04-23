import 'package:flutter/material.dart';
import 'package:shopping_app_with_provider_and_hive/views/shared/app_style.dart';

class CategoryBtn extends StatelessWidget {
  CategoryBtn(
      {Key? key, this.onPressed, required this.buttonClr, required this.label})
      : super(key: key);

  final void Function()? onPressed;
  final Color buttonClr;
  final String label;

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      onPressed: onPressed,
      child: Container(
        height: 45,
        width: MediaQuery.of(context).size.width * 0.250,
        decoration: BoxDecoration(
            border: Border.all(
                width: 1, color: buttonClr, style: BorderStyle.solid),
            borderRadius: const BorderRadius.all(Radius.circular(9))),
        child: Center(
          child: Text(
            label,
            style: appStyle(20, buttonClr, FontWeight.w600),
          ),
        ),
      ),
    );
  }
}
