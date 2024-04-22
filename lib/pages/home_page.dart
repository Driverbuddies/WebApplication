import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:new_portfolio/constants/colors.dart';
import 'package:new_portfolio/constants/nav_items.dart';
import 'package:new_portfolio/widgets/about_us.dart';
import 'package:new_portfolio/widgets/drawer_mobile.dart';
import 'package:new_portfolio/widgets/header_desktop.dart';
import 'package:new_portfolio/widgets/signup_user.dart';
import 'package:new_portfolio/widgets/user_form.dart';
import 'package:new_portfolio/widgets/login_user.dart';
import '../constants/size.dart';
// import "../assets/images.png";
// import 'package:new_portfolio/styles/style.dart';
import 'package:new_portfolio/widgets/header_mobile.dart';
// import 'package:new_portfolio/constants/nav_items.dart';
// import 'package:new_portfolio/widgets/header_desktop.dart';
// import 'package:new_portfolio/widgets/site_logo.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final Scaffoldkey = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, Constraints) {
      return Scaffold(
        
        key: Scaffoldkey,
        endDrawer: Constraints.maxHeight >= KMinDesktopWidth
            ? null
            : const DrawerMobile(),
        backgroundColor: CustomColor.scaffoldBg,
        body: ListView(
          
          scrollDirection: Axis.vertical,
          children: [
            // Navbar_section
            // main Page section
            if (Constraints.maxWidth >= KMinDesktopWidth)
              const HeaderDesktop()
            else
              HeaderMobile(
                onLogoTap: () {},
                onMenuTap: () {
                  Scaffoldkey.currentState?.openEndDrawer();
                },
              ),

            // User form->1
            const UserForm(),
            

            // Signup form->2
            const SignupUser(),

            // contact->3
            const LoginUser(),


            // about us
           const AboutUs(),
          ],
        ),
      );
    });
  }
}