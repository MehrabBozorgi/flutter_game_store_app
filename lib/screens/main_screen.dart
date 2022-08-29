import 'package:flutter/material.dart';
import 'package:flutter_game_shop_ui/screens/first_screen.dart';
import 'package:flutter_game_shop_ui/tools/colors.dart';
import 'package:persistent_bottom_nav_bar/persistent-tab-view.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    PersistentTabController _controller;

    _controller = PersistentTabController(initialIndex: 0);
    List<Widget> _buildScreens() {
      return [
        const FirstScreen(),
        const FirstScreen(),
        const FirstScreen(),
        const FirstScreen(),
      ];
    }

    List<PersistentBottomNavBarItem> _navBarsItems() {
      return [
        PersistentBottomNavBarItem(
            icon: const Icon(
              Icons.home,
              color: redColor1,
            ),
            inactiveIcon: Icon(
              Icons.home_outlined,
              color: Colors.grey.shade800,
            ),
            title: ("Home"),
            activeColorPrimary: redColor2,
            activeColorSecondary: redColor1),
        PersistentBottomNavBarItem(
            icon: const Icon(
              Icons.location_on,
              color: redColor1,
            ),
            inactiveIcon: Icon(
              Icons.location_on_outlined,
              color: Colors.grey.shade800,
            ),
            title: ("Location"),
            activeColorPrimary: redColor2,
            activeColorSecondary: redColor1),
        PersistentBottomNavBarItem(
            icon: const Icon(
              Icons.notifications,
              color: redColor1,
            ),
            inactiveIcon: Icon(
              Icons.notifications_none_outlined,
              color: Colors.grey.shade800,
            ),
            title: ("Notification"),
            activeColorPrimary: redColor2,
            activeColorSecondary: redColor1),
        PersistentBottomNavBarItem(
            icon: const Icon(
              Icons.settings,
              color: redColor1,
            ),
            inactiveIcon: Icon(
              Icons.settings_outlined,
              color: Colors.grey.shade800,
            ),
            title: ("Settings"),
            activeColorPrimary: redColor2,
            activeColorSecondary: redColor1),
      ];
    }

    return PersistentTabView(
      context,
      controller: _controller,
      screens: _buildScreens(),
      items: _navBarsItems(),
      confineInSafeArea: true,
      backgroundColor: Colors.white,
      // Default is Colors.white.
      handleAndroidBackButtonPress: true,
      // Default is true.
      resizeToAvoidBottomInset: true,
      // This needs to be true if you want to move up the screen when keyboard appears. Default is true.
      stateManagement: true,
      // Default is true.
      hideNavigationBarWhenKeyboardShows: true,
      // Recommended to set 'resizeToAvoidBottomInset' as true while using this argument. Default is true.
      decoration: NavBarDecoration(
        borderRadius: BorderRadius.circular(10.0),
        colorBehindNavBar: Colors.white,
      ),
      popAllScreensOnTapOfSelectedTab: true,
      popActionScreens: PopActionScreensType.all,
      itemAnimationProperties: const ItemAnimationProperties(
        // Navigation Bar's items animation properties.
        duration: Duration(milliseconds: 200),
        curve: Curves.ease,
      ),
      screenTransitionAnimation: const ScreenTransitionAnimation(
        // Screen transition animation on change of selected tab.
        animateTabTransition: true,
        curve: Curves.ease,
        duration: Duration(milliseconds: 200),
      ),
      navBarStyle:
          NavBarStyle.style1, // Choose the nav bar style with this property.
    );
  }
}
