import 'package:flutter/material.dart';
import 'package:smartapp/common/screen_utils/screen_size.dart';
import 'package:smartapp/presentation/themes/app_colors.dart';

import '../../library/calender.dart';

class JournalPage extends StatefulWidget {
  const JournalPage({super.key});

  @override
  State<JournalPage> createState() => _JournalPageState();
}

class _JournalPageState extends State<JournalPage> {
  @override
  Widget build(BuildContext context) {
    ScreenSize().init(context);
    return Scaffold(
      backgroundColor: Color(0xff8980f0),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
          onPressed: () {},
          icon: const Icon(Icons.arrow_back_ios_new),
        ),
        title: const Text("Journal"),
        centerTitle: true,
      ),
      body: Column(
        children: [
          HorizontalCalendar(
            initialDate: DateTime.utc(2000, 7, 20),
            lastDate: DateTime.utc(2100, 7, 20),
            date: DateTime.now(),
            backgroundColor: Colors.transparent,
            selectedColor: Color(0xff6f65db),
            dateBackgroundColor: Color.fromARGB(255, 160, 151, 250),
            onDateSelected: (date) {
              DateTime formate = DateTime.parse(date);
              // setState(() {
              //   currentDate = formate;
              // });
            },
          ),
          SizedBox(
            height: screenHeight(20),
          ),
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(screenHeight(35)),
                  topRight: Radius.circular(screenHeight(35)),
                ),
              ),
              child: Column(children: [
                
              ],),
            ),
          )
        ],
      ),
    );
  }
}
