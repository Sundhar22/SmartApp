// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:smartapp/presentation/widgets/user_registration/notification.dart';
import 'package:smartapp/presentation/themes/app_colors.dart';
import 'package:smartapp/presentation/widgets/button_style/common_button.dart';

import '../../../common/animation_function/animation_nav.dart';

class TargetsPage extends StatefulWidget {
  TargetsPage({super.key});
  Set<int> selectedLevels = {};
  @override
  _TargetsPageState createState() => _TargetsPageState();
}

class _TargetsPageState extends State<TargetsPage> {
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
              width: 250,
              child: Text(
                "Let us know how we can help you",
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
            const Text('You always can change this later',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.normal,
                )),
            const SizedBox(
              height: 20,
            ),
            CustomCard(
              bgImage: 'assets/targets_icons/night.jpg',
              iconImage: 'assets/targets_icons/food.png',
              text: 'Weight loss',
              onCheckboxChanged: (bool? newValue) {
                newValue!
                    ? widget.selectedLevels.add(1)
                    : widget.selectedLevels.remove(1);
                print(widget.selectedLevels);
              },
            ),
            CustomCard(
              bgImage: 'assets/targets_icons/night.jpg',
              iconImage: 'assets/targets_icons/sleeping.png',
              text: 'Better sleeping habit',
              onCheckboxChanged: (bool? newValue) {
                newValue!
                    ? widget.selectedLevels.add(2)
                    : widget.selectedLevels.remove(2);
                print(widget.selectedLevels);
              },
            ),
            CustomCard(
              bgImage: 'assets/targets_icons/green.jpg',
              iconImage: 'assets/targets_icons/nutirition.png',
              text: 'Track my nutrition',
              onCheckboxChanged: (bool? newValue) {
                newValue!
                    ? widget.selectedLevels.add(3)
                    : widget.selectedLevels.remove(3);
                print(widget.selectedLevels);
              },
            ),
            CustomCard(
              bgImage: 'assets/targets_icons/night.jpg',
              iconImage: 'assets/targets_icons/muscle.png',
              text: 'Improve overall fitness',
              onCheckboxChanged: (bool? newValue) {
                newValue!
                    ? widget.selectedLevels.add(4)
                    : widget.selectedLevels.remove(4);
                print(widget.selectedLevels);
              },
            ),
            const SizedBox(
              height: 20,
            ),
            // Container(
            //     width: MediaQuery.of(context).size.width * 0.8,
            //     height: 60,
            //     decoration: BoxDecoration(
            //       color: AppColor.purplyBlue,
            //       borderRadius: BorderRadius.circular(15),
            //     ),
            //     child: const Center(
            //       child: Text(
            //         'select',
            //         textAlign: TextAlign.center,
            //         style: TextStyle(
            //           color: Colors.white,
            //           fontSize: 18,
            //         ),
            //       ),
            //     )),
            commonButton(
                function: () => navigateWithAnimation(
                    animationType: AnimationType.fade,
                    context: context,
                    pageClass: () => const NotificationScreen()),
                text: "select",
                context: context),
            const SizedBox(
              height: 20,
            )
          ],
        ),
      ),
    ));
  }
}

class CustomCard extends StatefulWidget {
  final String bgImage;
  final String iconImage;
  final String text;
  final ValueSetter<bool?>? onCheckboxChanged;

  const CustomCard({
    super.key,
    required this.iconImage,
    required this.bgImage,
    required this.text,
    this.onCheckboxChanged,
  });

  @override
  _CustomCardState createState() => _CustomCardState();
}

class _CustomCardState extends State<CustomCard> {
  bool isChecked = false;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          isChecked = !isChecked;
        });
        widget.onCheckboxChanged!(isChecked);
      },
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15.0),
            color: Colors.white,
          ),
          height: 90,
          child: Card(
            elevation: 2,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15.0),
            ),
            child: Stack(
              children: [
                isChecked
                    ? Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15.0),
                          image: DecorationImage(
                            image: AssetImage(widget.bgImage),
                            fit: BoxFit.fill,
                          ),
                        ),
                      )
                    : Container(
                        color: Colors.white,
                      ),
                Align(
                  alignment: Alignment.center,
                  child: ListTile(
                      leading:
                          Image.asset(widget.iconImage, width: 30, height: 30),
                      title: Text(
                        widget.text,
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: isChecked ? Colors.white : Colors.black,
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      trailing: Container(
                        alignment: Alignment.center,
                        width: 18,
                        height: 18,
                        decoration: BoxDecoration(
                            color: Colors.grey,
                            borderRadius: BorderRadius.circular(5)),
                        child: Checkbox(
                          checkColor: AppColor.purplyBlue,
                          visualDensity: VisualDensity.comfortable,
                          activeColor: Colors.white,
                          value: isChecked,
                          side: BorderSide.none,
                          onChanged: (bool? newValue) {
                            setState(() {
                              isChecked = newValue ?? false;
                            });

                            if (widget.onCheckboxChanged != null) {
                              widget.onCheckboxChanged!(isChecked);
                            }
                          },
                        ),
                      )),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
