import 'package:faz_a_boa/app/widgets/drawer/config_drawer.dart';
import 'package:faz_a_boa/app/widgets/navigation_bar/navigation_bar.dart';
import 'package:flutter/material.dart';

class ScaffoldBase extends StatelessWidget {
  final Widget child;
  final bool navigationBar;
  final bool configDrawer;
  final NavigationIndex navigationIndex;

  const ScaffoldBase(
      {Key? key,
      required this.child,
      this.navigationBar = false,
      this.configDrawer = false,
      this.navigationIndex = NavigationIndex.home})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return (navigationBar && configDrawer) ? scaffoldApp() : scaffoldBase();
  }

  Widget scaffoldApp() {
    return Scaffold(
      backgroundColor: Colors.white,
      drawerEnableOpenDragGesture: true,
      body: SafeArea(child: child),
      bottomNavigationBar: navigationBar
          ? FZBNavigationBar(navigationIndex: navigationIndex)
          : null,
      endDrawer: configDrawer ? ConfigDrawer() : null,
    );
  }

  Widget scaffoldBase() {
    return Scaffold(
      body: SafeArea(
        child: child,
      ),
    );
  }
}
