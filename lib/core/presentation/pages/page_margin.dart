// Flutter imports:
import 'package:flutter/material.dart';

// Project imports:
import 'package:uptodo/core/platform/platform.dart';
import 'package:sizer/sizer.dart';

import 'tap_outside_unfocus.dart';

class PageMargin extends StatelessWidget {
  final Widget child;
  final EdgeInsetsGeometry? padding;
  final bool resizeToAvoidBottomInset;
  final bool showBottomNav;
  final ValueChanged<int>? onNavItemTap;
  final int selectedIndex;
  final Color? backgroundColor;
  final Color? backgroundOverlayColor;

  final Widget? floatingButton;
  final GlobalKey<ScaffoldState>? scaffoldKey;
  final Widget? floatingActionButton;
  final FloatingActionButtonLocation? floatingActionButtonLocation;
  final PreferredSizeWidget? appBar;
  final bool? extendBodyBehindAppBar;

  const PageMargin({
    Key? key,
    required this.child,
    this.scaffoldKey,
    this.padding,
    this.resizeToAvoidBottomInset = true,
    this.showBottomNav = false,
    this.onNavItemTap,
    this.floatingButton,
    this.selectedIndex = -1,
    this.backgroundColor,
    this.floatingActionButton,
    this.floatingActionButtonLocation,
    this.appBar,
    this.extendBodyBehindAppBar,
    this.backgroundOverlayColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _sc = SizeConfig(context: context);

    if (showBottomNav && selectedIndex == -1) {
      throw Exception("selectedIndex cannot be null when showing bottom nav");
    }
    if (showBottomNav && onNavItemTap == null) {
      throw Exception("onNavItemTap cannot be null when showing bottom nav");
    }

    return TapOutSideUnfocus(
      child: Scaffold(
        extendBodyBehindAppBar: extendBodyBehindAppBar ?? false,
        key: scaffoldKey,
        resizeToAvoidBottomInset: resizeToAvoidBottomInset,
        backgroundColor: backgroundColor ?? AppColors.white,
        appBar: appBar ?? AppBar(toolbarHeight: 0, elevation: 0),
        floatingActionButton: floatingActionButton,
        floatingActionButtonLocation: floatingActionButtonLocation,
        // bottomNavigationBar: showBottomNav
        //     ? BottomNavigationBar(
        //         backgroundColor: AppColors.white,
        //         showSelectedLabels: true,
        //         showUnselectedLabels: true,
        //         type: BottomNavigationBarType.fixed,
        //         selectedFontSize: 9.sp,
        //         unselectedFontSize: 8.sp,
        //         elevation: 1,
        //         items: const <BottomNavigationBarItem>[
        //           BottomNavigationBarItem(
        //             icon: Icon(IconlyLight.category),
        //             label: 'Explore',
        //           ),
        //           BottomNavigationBarItem(
        //             icon: Icon(IconlyLight.document),
        //             label: 'Orders',
        //           ),
        //           BottomNavigationBarItem(
        //             icon: Icon(IconlyLight.bag),
        //             label: 'Cart',
        //           ),
        //           BottomNavigationBarItem(
        //             icon: Icon(IconlyLight.notification),
        //             label: 'Notification',
        //           ),
        //           BottomNavigationBarItem(
        //             icon: Icon(IconlyLight.profile),
        //             label: 'Account',
        //           ),
        //         ],
        //         currentIndex: selectedIndex,
        //         selectedItemColor: AppColors.primaryGreen,
        //         onTap: onNavItemTap,
        //         unselectedItemColor: AppColors.grey0,
        //       )
        //     : null,
        body: SafeArea(
          top: extendBodyBehindAppBar == null ? true : !extendBodyBehindAppBar!,
          child: Padding(
            padding: padding ??
                EdgeInsets.only(
                  left: 4.w,
                  right: 4.w,
                  top: _sc.heightScaledSize(20),
                ),
            child: child,
          ),
        ),
      ),
    );
  }
}
