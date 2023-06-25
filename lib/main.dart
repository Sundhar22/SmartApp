import 'package:flutter/material.dart';
import 'package:smartapp/common/screen_utils/screen_size.dart';
import 'package:smartapp/presentation/themes/app_colors.dart';
import 'package:smartapp/presentation/widgets/button_style/common_button.dart';
import 'package:smartapp/presentation/widgets/user_registration/profile_icon_choice.dart';
import 'package:smartapp/presentation/widgets/user_registration/user_weight.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: UserWeight(),
    );
  }
}
