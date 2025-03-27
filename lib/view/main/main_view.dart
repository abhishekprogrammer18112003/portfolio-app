import 'package:flutter/material.dart';
import 'package:portfolio_app/main.dart';
import 'package:portfolio_app/view%20model/controller.dart';

import 'components/drawer/drawer.dart';
import 'components/navigation_button_list.dart';

class MainView extends StatelessWidget {
  const MainView({super.key, required this.pages});
  final List<Widget> pages;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const CustomDrawer(),

      // ✅ AppBar with Drawer + Theme Toggle
      appBar: AppBar(
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
        // backgroundColor: Theme.of(context).scaffoldBackgroundColor,
        elevation: 0,
        leading: Builder(
          builder: (context) => IconButton(
            icon: const Icon(
              Icons.menu,
              color: Colors.grey,
            ),
            onPressed: () => Scaffold.of(context).openDrawer(),
          ),
        ),
        title: const Text(
          "Portfolio",
          style: TextStyle(color: Colors.grey),
        ),
        actions: [
          IconButton(
            icon: Icon(
              Theme.of(context).brightness == Brightness.dark
                  ? Icons.wb_sunny
                  : Icons.nightlight_round,
              color: Colors.grey,
            ),
            onPressed: () {
              themeController.toggleTheme();
            },
          ),
        ],
      ),

      // ✅ Main Body with Pages
      body: PageView(
        scrollDirection: Axis.vertical,
        physics: const NeverScrollableScrollPhysics(),
        controller: controller,
        children: [...pages],
      ),

      // ✅ Bottom Navigation Bar
      bottomNavigationBar:BottomAppBar(
        height: 60,
        color: Theme.of(context).brightness == Brightness.dark  ? Color.fromARGB(178, 39, 39, 39) : const Color.fromARGB(158, 216, 216, 216),
        elevation: 8,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            NavigationButtonList(),
            // ConnectButton(),
          ],
        ),
      ),
    );
  }
}
