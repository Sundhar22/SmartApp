import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:smartapp/common/screen_utils/screen_size.dart';
import 'package:smartapp/presentation/themes/app_colors.dart';
import 'package:smartapp/presentation/widgets/user_registration/profile_icon_choice.dart';

import '../../../common/animation_function/animation_nav.dart';
import '../button_style/common_button.dart';
import 'user_height.dart';

class SelectGender extends StatefulWidget {
  const SelectGender({super.key});

  @override
  State<SelectGender> createState() => _SelectGenderState();
}

class _SelectGenderState extends State<SelectGender> {
  @override
  Widget build(BuildContext context) {
    ScreenSize().init(context);
    return Scaffold(
      body: SafeArea(
        child: Container(
          color: Colors.white,
          child: Column(
            children: [
              const Row(
                children: [
                  SizedBox(
                    width: 10,
                  ),
                  Icon(
                    Icons.arrow_back_ios_rounded,
                    size: 30,
                    color: AppColor.black,
                  ),
                ],
              ),
              const SizedBox(
                height: 35,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "STEP 1/7",
                    style: GoogleFonts.poppins(
                        color: AppColor.purplyBlue,
                        fontSize: 15,
                        fontWeight: FontWeight.bold),
                  )
                ],
              ),
              const SizedBox(
                height: 5,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Which one are you?",
                    style: GoogleFonts.poppins(
                        color: AppColor.black,
                        fontSize: 25,
                        fontWeight: FontWeight.bold),
                  )
                ],
              ),
              const SizedBox(
                height: 45,
              ),
              Stack(children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    // Card(
                    //   margin: const EdgeInsets.all(10),
                    //   shape: RoundedRectangleBorder(
                    //       borderRadius: BorderRadius.circular(10)),
                    //   child: Container(
                    //     height: 200,
                    //     width: 150,
                    //     child: SvgPicture.asset("assets/images/male.svg"),
                    //   ),
                    // ),
                    GestureDetector(
                      onTap: () {},
                      child: Container(
                        height: 200,
                        width: 150,
                        alignment: Alignment.bottomCenter,
                        decoration: const BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage("assets/images/male.jpg"))),
                        child: Text(
                          "Male",
                          style: GoogleFonts.poppins(
                              color: AppColor.purplyBlue, fontSize: 17),
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 30,
                    ),
                    GestureDetector(
                      onTap: () {},
                      child: Container(
                        height: 200,
                        width: 150,
                        alignment: Alignment.bottomCenter,
                        decoration: const BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage("assets/images/female.jpg"))),
                        child: Text(
                          "Female",
                          style: GoogleFonts.poppins(
                              color: AppColor.purplyBlue, fontSize: 17),
                        ),
                      ),
                    ),
                    // Card(
                    //   margin: const EdgeInsets.all(10),
                    //   shape: RoundedRectangleBorder(
                    //       borderRadius: BorderRadius.circular(10)),
                    //   child: Container(
                    //     height: 200,
                    //     width: 150,
                    //     // margin: EdgeInsets.only(left: 1, right: 10),
                    //     child: SvgPicture.asset("assets/images/female.svg"),
                    //   ),
                    // ),
                  ],
                ),
              ]),
              const SizedBox(
                height: 40,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "To give you a customize experience \n      we need to know your gender",
                    style: GoogleFonts.poppins(
                        color: AppColor.santaGrey,
                        fontSize: 15,
                        fontWeight: FontWeight.bold),
                  )
                ],
              ),
              const SizedBox(
                height: 150,
              ),
              commonButton(
                  function: () => navigateWithAnimation(
                      animationType: AnimationType.fade,
                      context: context,
                      pageClass: () => const ProfileChoice()),
                  text: "Continue",
                  context: context),
              const SizedBox(
                height: 15,
              ),
              // SizedBox(
              //   height: 50,
              //   width: 250,
              //   child: TextButton(
              //       onPressed: () {},
              //       child: Text(
              //         "Prefer not to choose",
              //         style: GoogleFonts.poppins(
              //             color: AppColor.purplyBlue,
              //             fontSize: 15,
              //             fontWeight: FontWeight.bold),
              //       ),
              //       style: ElevatedButton.styleFrom(
              //         backgroundColor: AppColor.white,
              //         shape: RoundedRectangleBorder(
              //             borderRadius: BorderRadius.circular(15)),
              //       )),
              // )
            ],
          ),
        ),
      ),
    );
  }
}
