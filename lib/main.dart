import 'package:flutter/material.dart';
import 'package:smartapp/presentation/journeys/gender.dart';
import 'package:smartapp/presentation/journeys/notification.dart';
import 'package:smartapp/presentation/widgets/user_registration/profile_icon_choice.dart';


void main() => runApp(MyApp());



class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override

  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Notification",
      debugShowCheckedModeBanner: false,
      home: SelectGender(),
    );
=======
  Widget build(BuildContext context) {
    return MaterialApp(

      title: 'HealHer SmartBand',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: ProfileChoice(),
    );
        

  }
}