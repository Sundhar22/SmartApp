import 'package:flutter/material.dart';
import 'package:horizontal_picker/horizontal_picker.dart';

import '../../../common/animation_function/animation_nav.dart';
import '../../../common/screen_utils/screen_size.dart';
import '../../themes/app_colors.dart';
import '../button_style/common_button.dart';
import 'activities_page.dart';

class UserHeight extends StatefulWidget {
  const UserHeight({super.key});

  @override
  State<UserHeight> createState() => _UserHeightState();
}

class _UserHeightState extends State<UserHeight> {
  List<bool> isSelected = List.generate(3, (_) => false);

  bool cm = true;

  double height = 0.0;

  @override
  Widget build(BuildContext context) {
    ScreenSize().init(context);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          onPressed: () {},
          icon: const Icon(Icons.arrow_back_ios_new),
        ),
        actions: [
          TextButton(
              onPressed: () {},
              child: Text("Next",
                  style: TextStyle(
                    fontSize: screenHeight(16),
                    fontWeight: FontWeight.bold,
                    color: AppColor.purplyBlue.withOpacity(.9),
                  ))),
        ],
        centerTitle: true,
        title: Text("user height",
            style: TextStyle(
              fontSize: screenHeight(20),
              fontWeight: FontWeight.bold,
              color: AppColor.purplyBlue,
            )),
      ),
      body: SizedBox(
        width: double.infinity,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              height: screenHeight(280),
              child: Image.asset(
                "assets/png/height.png",
              ),
            ),
            Text(
              "STEP 1/7",
              style: TextStyle(
                  color: AppColor.purplyBlue,
                  fontWeight: FontWeight.bold,
                  fontSize: screenHeight(15)),
            ),
            Text(
              "What is your height?",
              style: TextStyle(
                  color: AppColor.black,
                  fontWeight: FontWeight.bold,
                  fontSize: screenHeight(25)),
            ),
            Padding(
              padding: EdgeInsets.symmetric(vertical: screenHeight(30)),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  FilledButton(
                      style: ButtonStyle(
                        padding: MaterialStatePropertyAll(EdgeInsets.symmetric(
                            vertical: screenHeight(12),
                            horizontal: screenWidth(30))),
                        side: MaterialStatePropertyAll(BorderSide(
                            width: screenWidth(1),
                            color: Colors.grey.shade300)),
                        backgroundColor: MaterialStatePropertyAll(
                            cm == false ? AppColor.purplyBlue : Colors.white),
                        shape: MaterialStatePropertyAll(
                          ContinuousRectangleBorder(
                            borderRadius: BorderRadius.circular(15),
                          ),
                        ),
                      ),
                      onPressed: () {
                        setState(() {
                          cm = false;
                        });
                      },
                      child: Text(
                        "inch",
                        style: TextStyle(
                            color: cm == false ? AppColor.white : Colors.black,
                            fontSize: screenHeight(20)),
                      )),
                  SizedBox(
                    width: screenWidth(15),
                  ),
                  FilledButton(
                      style: ButtonStyle(
                        padding: MaterialStatePropertyAll(EdgeInsets.symmetric(
                            vertical: screenHeight(12),
                            horizontal: screenWidth(30))),
                        side: MaterialStatePropertyAll(BorderSide(
                            width: screenWidth(1),
                            color: Colors.grey.shade300)),
                        backgroundColor: MaterialStatePropertyAll(
                            cm == true ? AppColor.purplyBlue : Colors.white),
                        shape: MaterialStatePropertyAll(
                          ContinuousRectangleBorder(
                            borderRadius: BorderRadius.circular(15),
                          ),
                        ),
                      ),
                      onPressed: () {
                        setState(() {
                          cm = true;
                        });
                      },
                      child: Text(
                        "cm",
                        style: TextStyle(
                            color: cm == true ? AppColor.white : Colors.black,
                            fontSize: screenHeight(20)),
                      )),
                ],
              ),
            ),
            Text(cm ? "$height cm" : "$height inch",
                style: TextStyle(
                    fontWeight: FontWeight.w800, fontSize: screenHeight(20))),
            SizedBox(
              height: screenHeight(15),
            ),
            Container(
              margin: EdgeInsets.all(screenWidth(1)),
              decoration:
                  BoxDecoration(borderRadius: BorderRadius.circular(100)),
              child: HorizontalPicker(
                minValue: 10,
                maxValue: 200,
                divisions: 600,
                suffix: cm ? " cm" : " inch",
                showCursor: false,
                backgroundColor: Colors.grey.shade900,
                activeItemTextColor: AppColor.white,
                passiveItemsTextColor: AppColor.purplyBlue,
                onChanged: (value) {
                  setState(() {
                    height = value;
                  });
                },
                height: 100,
                initialPosition: InitialPosition.center,
              ),
            ),
            SizedBox(
              height: screenHeight(50),
            ),
            commonButton(
                function: () => navigateWithAnimation(
                    animationType: AnimationType.fade,
                    context: context,
                    pageClass: () => ActivitiesPage()),
                text: "Continue",
                context: context)
          ],
        ),
      ),
    );
  }
}
