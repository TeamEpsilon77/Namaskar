import "package:flutter/material.dart";
import 'package:namaskar_app/app_screens/setting_app_screen/about.dart';
import 'package:namaskar_app/app_screens/setting_app_screen/help.dart';
import 'package:namaskar_app/app_screens/setting_app_screen/invite_friends.dart';
import 'package:namaskar_app/app_screens/setting_app_screen/language.dart';
import 'package:namaskar_app/app_screens/setting_app_screen/personal_info.dart';
import 'package:namaskar_app/app_screens/setting_app_screen/report_problem.dart';
import 'package:namaskar_app/app_screens/setting_app_screen/terms_and_conditions.dart';
import 'package:namaskar_app/app_screens/setting_screen.dart';
import './app_screens/widgets/home_screen_widget.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    title: "Namaskar",
    home: HomeScreenWidget(),
  )
  );
}
