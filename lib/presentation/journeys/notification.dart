import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:smartapp/presentation/themes/app_colors.dart';
import 'package:flutter_svg/flutter_svg.dart';

class NotificationScreen extends StatefulWidget {
  const NotificationScreen({super.key});

  @override
  State<NotificationScreen> createState() => _NotificationScreenState();
}

class _NotificationScreenState extends State<NotificationScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(right: 20, top: 10, left: 5),
                child: Container(
                  height: 45,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      IconButton(
                        icon: Icon(Icons.arrow_back_ios_rounded),
                        onPressed: (){},
                        iconSize: 20,
                        color: AppColor.black,),
                      TextButton(
                        onPressed: (){},
                        child: Text("Skip", style: GoogleFonts.poppins(color: AppColor.purplyBlue, fontSize: 15, fontWeight: FontWeight.bold),),
                      )
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("STEP 1/7",
                      style: GoogleFonts.poppins(
                          color: AppColor.purplyBlue,
                          fontSize: 15,
                          fontWeight: FontWeight.bold))
                ],
              ),
              const SizedBox(
                height: 5,
              ),
              Padding(
                padding: const EdgeInsets.only(right: 20, left: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Do you want to turn \n     on notification?",
                      style: GoogleFonts.poppins(
                          color: AppColor.black,
                          fontSize: 25,
                          fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              Container(
                height: 250,
                color: AppColor.bluishCyan,
              ),
              const SizedBox(
                height: 30,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 30, right: 20),
                child: Container(
                  child: Column(
                    children: [
                      GestureDetector(
                        onTap: (){},
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            SizedBox(height:25, width: 40,child: SvgPicture.asset("assets/icons/star.svg", color: AppColor.purplyBlue,)),
                            const SizedBox(
                              width: 10,
                            ),
                            Text(
                              "New weekly healthy reminder",
                              style: GoogleFonts.poppins(
                                  color: AppColor.black,
                                  fontSize: 17,
                                  fontWeight: FontWeight.w500),
                            )
                          ],
                        ),
                      ),
                    const  Divider(
                        color: AppColor.santaGrey,
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      GestureDetector(
                        onTap: (){},
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            SizedBox(height:25, width: 40,child: SvgPicture.asset("assets/icons/flame.svg", color: AppColor.purplyBlue,)),
                            const SizedBox(
                              width: 10,
                            ),
                            Text(
                              "Motivational reminder",
                              style: GoogleFonts.poppins(
                                  color: AppColor.black,
                                  fontSize: 17,
                                  fontWeight: FontWeight.w500),
                            )
                          ],
                        ),
                      ),
                     const Divider(
                        color: AppColor.santaGrey,
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      GestureDetector(
                        onTap: (){},
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            SizedBox(height:25, width: 40,child: SvgPicture.asset("assets/icons/heart.svg", color: AppColor.purplyBlue,)),
                            const SizedBox(
                              width: 10,
                            ),
                            Text(
                              "Personalised program",
                              style: GoogleFonts.poppins(
                                  color: AppColor.black,
                                  fontSize: 17,
                                  fontWeight: FontWeight.w500),
                            )
                          ],
                        ),
                      ),
                      Divider(
                        color: AppColor.santaGrey,
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 50,
              ),
              SizedBox(
                height: 50,
                width: 250,
                child: ElevatedButton(
                    onPressed: () {},
                      child: Text(
                      "Allow",
                      style: GoogleFonts.poppins(color: AppColor.white, fontSize: 15, fontWeight: FontWeight.bold),
                    ),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: AppColor.purplyBlue,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15)),
                    )
                  ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
