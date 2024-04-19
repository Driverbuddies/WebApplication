
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
import 'package:new_portfolio/widgets/user_login.dart';
import '../constants/size.dart';
// import "../assets/images.png";
// import 'package:new_portfolio/styles/style.dart';
import 'package:new_portfolio/widgets/header_mobile.dart';
// import 'package:new_portfolio/constants/nav_items.dart';
// import 'package:new_portfolio/widgets/header_desktop.dart';
// import 'package:new_portfolio/widgets/site_logo.dart';

class homePage extends StatefulWidget {
  const homePage({super.key});

  @override
  State<homePage> createState() => _homePageState();
}

class _homePageState extends State<homePage> {
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

            // User form
            const user_form(),
            

            // Signup form 
            const signup_user(),

            // contact
            const user_login(),


            // about us
           const about_us(),
          ],
        ),
      );
    });
  }
}