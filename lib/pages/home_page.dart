import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:new_portfolio/constants/colors.dart';
import 'package:new_portfolio/widgets/about_us.dart';
import 'package:new_portfolio/widgets/drawer_mobile.dart';
import 'package:new_portfolio/widgets/header_desktop.dart';
import 'package:new_portfolio/widgets/login_driver.dart';
import 'package:new_portfolio/widgets/login_driver_mobile.dart';
import 'package:new_portfolio/widgets/login_user.dart';
import 'package:new_portfolio/widgets/login_user_mobile.dart';
import 'package:new_portfolio/widgets/signup_driver.dart';
import 'package:new_portfolio/widgets/signup_driver_mobile.dart';
import 'package:new_portfolio/widgets/signup_user.dart';
import 'package:new_portfolio/widgets/signup_user_mobile.dart';
import 'package:new_portfolio/widgets/user_form.dart';
import 'package:new_portfolio/widgets/user_form_mobile.dart';
import '../constants/size.dart';
import 'package:new_portfolio/widgets/header_mobile.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      final bool isDesktop = constraints.maxWidth >= KMinDesktopWidth;

      return Scaffold(
        key: _scaffoldKey,
        endDrawer: isDesktop ? null : const DrawerMobile(),
        backgroundColor: CustomColor.scaffoldBg,
        body: ListView(
          scrollDirection: Axis.vertical,
          children: [
            // Navbar_section
            // main Page section
            isDesktop ? const HeaderDesktop() : HeaderMobile(
              onLogoTap: () {},
              onMenuTap: () {
                _scaffoldKey.currentState?.openEndDrawer();
              },
            ),

            // User form
            isDesktop ? const UserForm() : const UserFormMobile(),

            // Signup user form
            isDesktop ? const SignupUser() : const SignupUserMobile(),

            // Login user form
            isDesktop ? const LoginUser() : const LoginUserMobile(),

            // Signup driver form
            isDesktop ? const SignupDriver() : const SignupDriverMobile(),

            // Login driver form
            isDesktop ? const LoginDriver() : const LoginDriverMobile(),

            // about us
            const AboutUs(),
          ],
        ),
      );
    });
  }
}
