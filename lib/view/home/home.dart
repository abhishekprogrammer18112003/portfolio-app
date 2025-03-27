import 'package:flutter/material.dart';
import 'package:portfolio_app/view/about%20me/about_me.dart';
import 'package:portfolio_app/view/certifications/certifications.dart';
import 'package:portfolio_app/view/contacts/contact_section.dart';
import 'package:portfolio_app/view/intro/introduction.dart';
import 'package:portfolio_app/view/main/main_view.dart';
import 'package:portfolio_app/view/projects/project_view.dart';


class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return  MainView(pages: [
      const Introduction(),
      AboutMeSection(),
      ProjectsView(),
      ContactPage(),
    ]);
  }
}
