import 'package:flutter/material.dart';
import 'package:smartapp/presentation/journeys/screens/activities_page.dart';
import 'package:smartapp/presentation/journeys/screens/targets_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'HealHer SmartBand',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        home: ActivitiesPage());
  }
}
