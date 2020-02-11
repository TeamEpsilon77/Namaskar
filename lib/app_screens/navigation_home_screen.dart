
import 'package:flutter/material.dart';
import 'package:flutter_login_page/custom_drawer/drawer_user_controller.dart';
import 'package:flutter_login_page/custom_drawer/home_drawer.dart';
import 'package:flutter_login_page/setting_app_screen/about.dart';
import 'package:flutter_login_page/setting_app_screen/feedback_screen.dart';
import 'package:flutter_login_page/setting_app_screen/help_screen.dart';
import 'package:flutter_login_page/setting_app_screen/invite_friends.dart';
import 'package:flutter_login_page/setting_app_screen/language.dart';
import 'package:url_launcher/url_launcher.dart';
import '../home.dart';

class NavigationHomeScreen extends StatefulWidget {
  @override
  _NavigationHomeScreenState createState() => _NavigationHomeScreenState();
}

class _NavigationHomeScreenState extends State<NavigationHomeScreen> {
  Widget screenView;
  DrawerIndex drawerIndex;
  AnimationController sliderAnimationController;

  @override
  void initState() {
    screenView = new Homes();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: SafeArea(
        top: false,
        bottom: false,
        child: Scaffold(
          backgroundColor: Colors.white,
          body: DrawerUserController(
            screenIndex: drawerIndex,
            drawerWidth: MediaQuery.of(context).size.width * 0.75,
            animationController: (AnimationController animationController) {
              sliderAnimationController = animationController;
            },
            onDrawerCall: (DrawerIndex drawerIndexdata)
            {
              changeIndex(drawerIndexdata);
            },
            screenView: screenView,
          ),
        ),
      ),
    );
  }

  void changeIndex(DrawerIndex drawerIndexdata) {
    if (drawerIndex != drawerIndexdata) {
      drawerIndex = drawerIndexdata;
      if (drawerIndex == DrawerIndex.HOME) {
        setState(() {
          screenView = new Homes();
        });
      } else if (drawerIndex == DrawerIndex.Help) {
        setState(() {
          screenView = HelpScreen();
        });
      } else if (drawerIndex == DrawerIndex.FeedBack) {
        setState(() {
          screenView = FeedbackScreen();
        });
      } else if (drawerIndex == DrawerIndex.Invite) {
        setState(() {
          screenView = InviteFriend();
        });
      } else if (drawerIndex == DrawerIndex.About) {
        setState(() {
          screenView = AboutUs();
        });}
      else if (drawerIndex == DrawerIndex.About) {
        setState(() {
          screenView = Language();
        });}
      else if (drawerIndex == DrawerIndex.Testing) {
          setState(() {
            screenView = playstore();
          }

        );
      }
    }
  }
}
playstore() async {
  const url = 'https://play.google.com/store/apps';
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch $url';
  }
}
