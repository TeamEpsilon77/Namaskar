import 'package:flutter/material.dart';
import 'package:flutter_login_page/getstarted.dart';
import 'package:flutter_login_page/head.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import './Widgets/FormCard.dart';
import 'Widgets/SocialIcon.dart';
import 'CustomIcons.dart';
import './Signin.dart';


class Signup extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}
class _MyAppState extends State<Signup> {
  bool _isSelected = false;

  void _radio() {
    setState(() {
      _isSelected = !_isSelected;
    });
  }

  Widget radioButton(bool isSelected) => Container(
    width: 17.0,
    height: 17.0,
    padding: EdgeInsets.all(2.0),
    decoration: BoxDecoration(
      shape: BoxShape.circle,
      border: Border.all(width: 2.0, color: Colors.black),
    ),
    child: isSelected
        ? Container(
      width: double.infinity,
      height: double.infinity,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: Colors.red,
      ),
    )
        : Container(),
  );

  Widget horizontalLine() => Padding(
    padding: EdgeInsets.symmetric(horizontal: 16.0),
    child: Container(
      width: ScreenUtil.getInstance().setWidth(200),
      height: 1.0,
      color: Colors.black26.withOpacity(.2),
    ),
  );



  @override
  Widget build(BuildContext context) {
    ScreenUtil.instance = ScreenUtil(width: 900, height: 1334, allowFontScaling: true)..init(context);

    return new Scaffold(
        backgroundColor: Colors.white,
        resizeToAvoidBottomInset: true,
        body: Stack(
          fit: StackFit.expand,
          children: <Widget>[
            Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: <Widget>[
                Padding(
                    padding: EdgeInsets.only(top: 20.0),
                    child: Image.asset('assets/image.png')
                ),
                Expanded(
                  child: Container(),
                ),
                Image.asset('assets/image_02.png'),
              ],
            ),
            SingleChildScrollView(
                child: Padding(
                    padding: EdgeInsets.only(left: 8.0, right: 18.0, top: 40.0),
                    child: Column(
                      children: <Widget>[
                        Row(
                          children: <Widget>[
                            Image.asset(
                              'assets/logo.png',
                              width: ScreenUtil.getInstance().setWidth(120),
                              height: ScreenUtil.getInstance().setHeight(120),
                            ),
                            Text(
                                'LOGO',
                                style: TextStyle(
                                  fontFamily: 'Poppins-Bold',
                                  fontSize: ScreenUtil.getInstance().setSp(45),
                                  letterSpacing: .6,
                                  fontWeight: FontWeight.bold,
                                )
                            )
                          ],
                        ),
                        SizedBox(
                          height: ScreenUtil.getInstance().setHeight(40),
                        ),
                        FormCard1(),
                        SizedBox(
                          height: ScreenUtil.getInstance().setHeight(15),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Row(
                              children: <Widget>[
                                SizedBox(
                                  width: ScreenUtil.getInstance().setWidth(10.0),
                                ),
                                GestureDetector(
                                  onTap: _radio,
                                  child: radioButton(_isSelected),
                                ),
                                SizedBox(
                                  width: ScreenUtil.getInstance().setWidth(8.0),
                                ),
                                Text(
                                    'Remember me',
                                    style: TextStyle(
                                      fontSize: 12.0, fontFamily: 'Poppins-Medium',
                                    )
                                ),
                              ],
                            ),
                            InkWell(
                              child: Container(
                                  width: ScreenUtil.getInstance().setWidth(300),
                                  height: ScreenUtil.getInstance().setHeight(100),
                                  decoration: BoxDecoration(
                                    gradient: LinearGradient(
                                        colors: [Color(0xFF17ead9), Color(0xFF6078ea)]
                                    ),
                                    borderRadius: BorderRadius.circular(6.0),
                                    boxShadow: [
                                      BoxShadow(
                                        color: Color(0xFF6078ea).withOpacity(.3),
                                        offset: Offset(0.0, 8.0),
                                        blurRadius: 8.0,
                                      )
                                    ],
                                  ),
                                  child: Material(
                                      color: Colors.transparent,
                                      child: InkWell(
                                          onTap: () { Navigator.push(
                                            context,
                                            MaterialPageRoute(builder: (context) => Head()),
                                          );},
                                          child: Center(
                                              child: Text(
                                                  'SIGNUP',
                                                  style: TextStyle(
                                                      color: Colors.white,
                                                      fontFamily: 'Poppins-Bold',
                                                      fontSize: 18.0,
                                                      letterSpacing: 1.0
                                                  )
                                              )
                                          )
                                      )
                                  )
                              ),
                            )
                          ],
                        ),
                        SizedBox(
                          height: ScreenUtil.getInstance().setHeight(10),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            horizontalLine(),
                            Text(
                                'Signup With',
                                style: TextStyle(
                                  fontSize: 16.0,
                                  fontFamily: 'Poppins-Medium',
                                )
                            ),
                            horizontalLine(),
                          ],
                        ),
                        SizedBox(
                          height: ScreenUtil.getInstance().setHeight(40),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            SocialIcon(
                              colors: [
                                Color(0xFF102397),
                                Color(0xFF187adf),
                                Color(0xFF00eaf8),
                              ],
                              icondata: CustomIcons.facebook,
                              onPressed: () {},
                            ),
                            SocialIcon(
                              colors: [
                                Color(0xFFff4f38),
                                Color(0xFFff355d),
                              ],
                              icondata: CustomIcons.googlePlus,
                              onPressed: () {},
                            ),
                            SocialIcon(
                              colors: [
                                Color(0xFF17ead9),
                                Color(0xFF6078ea),
                              ],
                              icondata: CustomIcons.twitter,
                              onPressed: () {},
                            ),
                            SocialIcon(
                              colors: [
                                Color(0xFF00c6fb),
                                Color(0xFF005bea),
                              ],
                              icondata: CustomIcons.linkedin,
                              onPressed: () {},
                            ),
                          ],
                        ),
                        SizedBox(
                          height: ScreenUtil.getInstance().setHeight(30),
                        ),
                      ],
                    )
                )
            ),
          ],
        )
    );
  }
}