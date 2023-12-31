// ignore_for_file: library_private_types_in_public_api

import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:smartapp/common/screen_utils/screen_size.dart';
import 'package:smartapp/presentation/journeys/models/fitness_model.dart';
import 'package:smartapp/presentation/themes/app_colors.dart';

import '../../../common/animation_function/animation_nav.dart';
import '../button_style/common_button.dart';
import 'targets_page.dart';

class ActivitiesPage extends StatefulWidget {
  const ActivitiesPage({super.key});

  @override
  _ActivitiesPageState createState() => _ActivitiesPageState();
}

class _ActivitiesPageState extends State<ActivitiesPage> {
  final fitnessLevel = [
    FitnessLevel(
        level: 0,
        image: 'assets/activity_vectors/more_active.png',
        title: 'Little or No Activity',
        subtitle: 'Mostly sitting through the day (eg. Desk Job, Bank Teller)'),
    FitnessLevel(
        level: 1,
        image: 'assets/activity_vectors/more_active.png',
        title: 'Lightly Active',
        subtitle:
            'Mostly standing through the day (eg. Sales Associate, Teacher)'),
    FitnessLevel(
        level: 2,
        image: 'assets/activity_vectors/more_active.png',
        title: 'Moderately Active',
        subtitle:
            'Mostly walking or doing physical activities through the day (eg. Tour Guide, Waiter)'),
    FitnessLevel(
        level: 3,
        image: 'assets/activity_vectors/more_active.png',
        title: 'Very Active',
        subtitle:
            'Mostly doing heavy physical activities through the day (eg. Gym Instructor, Construction Worker)'),
  ];
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(height: 100),
            const Text(
              'STEP 1/7',
              style: TextStyle(
                  color: AppColor.purplyBlue,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 1),
            ),
            const SizedBox(
              height: 10,
            ),
            const SizedBox(
              width: 350,
              child: Text(
                "What's your current fitness level?",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            CarouselSlider.builder(
              itemCount: fitnessLevel.length,
              itemBuilder: (BuildContext context, int itemIndex, int i) =>
                  Padding(
                padding: const EdgeInsets.symmetric(vertical: 0.5),
                child: Container(
                  decoration: BoxDecoration(
                    color: AppColor.lightPurplrBlue,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  width: 350,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        const SizedBox(
                          height: 20,
                        ),
                        ActiveIcons(
                          activityLevel: fitnessLevel[itemIndex].level,
                        ),
                        Expanded(
                          child: Image.asset(
                            fitnessLevel[itemIndex].image,
                            fit: BoxFit.cover,
                          ),
                        ),
                        Container(
                          decoration: BoxDecoration(
                            color: AppColor.purplyBlue,
                            borderRadius: BorderRadius.circular(20),
                          ),
                        ),
                        Text(
                          fitnessLevel[itemIndex].title,
                          style: const TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const SizedBox(
                          height: 15,
                        ),
                        Text(fitnessLevel[itemIndex].subtitle,
                            textAlign: TextAlign.center,
                            style: const TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.normal,
                            )),
                        const SizedBox(
                          height: 30,
                        ),
                        Container(
                            width: 170,
                            height: 50,
                            decoration: BoxDecoration(
                              color: AppColor.purplyBlue,
                              borderRadius: BorderRadius.circular(15),
                            ),
                            child: const Center(
                              child: Text(
                                'select',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 18,
                                ),
                              ),
                            )),
                        const SizedBox(
                          height: 30,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              options: CarouselOptions(
                  viewportFraction: 0.7,
                  height: 450,
                  autoPlay: false,
                  enlargeCenterPage: true,
                  enableInfiniteScroll: false,
                  onPageChanged: (index, reason) {
                    _currentIndex = index;
                    setState(() {});
                  }),
            ),
            const SizedBox(
              height: 15,
            ),
            DotIndicator(currentIndex: _currentIndex),
            SizedBox(
              height: screenHeight(35),
            ),
          commonButton(
                function: () => navigateWithAnimation(
                    animationType: AnimationType.fade,
                    context: context,
                    pageClass: () => TargetsPage()),
                text: "Continue",
                context: context)
          ],
        ),
      ),
    ));
  }
}

class ActiveIcons extends StatelessWidget {
  const ActiveIcons({super.key, required this.activityLevel});
  final int activityLevel;
  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.topLeft,
      child: Container(
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(10),
          ),
          child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: activityLevel == 1
                  ? Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Image.asset('assets/activity_vectors/flame_active.png'),
                        Image.asset(
                            'assets/activity_vectors/flame_inactive.png'),
                        Image.asset(
                            'assets/activity_vectors/flame_inactive.png')
                      ],
                    )
                  : activityLevel == 2
                      ? Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Image.asset(
                                'assets/activity_vectors/flame_active.png'),
                            Image.asset(
                                'assets/activity_vectors/flame_active.png'),
                            Image.asset(
                                'assets/activity_vectors/flame_inactive.png')
                          ],
                        )
                      : activityLevel == 3
                          ? Row(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Image.asset(
                                    'assets/activity_vectors/flame_active.png'),
                                Image.asset(
                                    'assets/activity_vectors/flame_active.png'),
                                Image.asset(
                                    'assets/activity_vectors/flame_active.png'),
                              ],
                            )
                          : Row(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Image.asset(
                                    'assets/activity_vectors/flame_inactive.png'),
                                Image.asset(
                                    'assets/activity_vectors/flame_inactive.png'),
                                Image.asset(
                                    'assets/activity_vectors/flame_inactive.png')
                              ],
                            ))),
    );
  }
}

class DotIndicator extends StatelessWidget {
  final int currentIndex;
  final int dotCount;
  final double dotSize;
  final double spacing;
  final Color activeDotColor;
  final Color inactiveDotColor;

  DotIndicator({
    required this.currentIndex,
    this.dotCount = 4,
    this.dotSize = 10.0,
    this.spacing = 10.0,
    this.activeDotColor = AppColor.purplyBlue,
    this.inactiveDotColor = Colors.grey,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: List.generate(dotCount, (index) {
        bool isActive = index == currentIndex;
        return Container(
          width: dotSize,
          height: dotSize,
          margin: EdgeInsets.symmetric(horizontal: spacing / 2),
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: isActive ? activeDotColor : inactiveDotColor,
          ),
        );
      }),
    );
  }
}
