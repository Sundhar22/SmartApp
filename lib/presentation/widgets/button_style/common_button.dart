import 'package:flutter/material.dart';
import 'package:smartapp/common/screen_utils/screen_size.dart';
import 'package:smartapp/presentation/themes/app_colors.dart';

Widget commonButton({required Function function, required String text}) {
  return FilledButton(
    onPressed: () {},
    style: ButtonStyle(
        backgroundColor: const MaterialStatePropertyAll(AppColor.purplyBlue),
        padding: MaterialStatePropertyAll(
            EdgeInsets.symmetric(horizontal: screenWidth(60))),
        shape: MaterialStatePropertyAll(
          ContinuousRectangleBorder(
            borderRadius: BorderRadius.circular(15),
          ),
        ),
        textStyle: MaterialStatePropertyAll(TextStyle(
            fontSize: screenHeight(18), fontWeight: FontWeight.w700))),
    child: Text(text),
  );
}