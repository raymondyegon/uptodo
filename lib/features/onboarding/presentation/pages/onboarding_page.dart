import 'dart:math';

import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter_svg/svg.dart';
import 'package:uptodo/core/platform/platform.dart';
import 'package:uptodo/features/onboarding/presentation/state/onboarding_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:sizer/sizer.dart';

class OnboardingPage extends StatefulWidget {
  const OnboardingPage({super.key});

  @override
  State<OnboardingPage> createState() => _OnboardingPageState();
}

class _OnboardingPageState extends State<OnboardingPage> {
  int page = 0;

  @override
  void initState() {
    super.initState();
  }

  pageChangeCallback(int lpage) {
    setState(() {
      page = lpage;
    });
  }

  final pages = [
    OnboardingPageData(
      image: AppImages.onboard_1,
      title: 'Manage your tasks',
      description:
          'You can easily manage all of your daily tasks in DoMe for free',
    ),
    OnboardingPageData(
      image: AppImages.onboard_2,
      title: 'Create daily routine',
      description:
          'In Uptodo  you can create your personalized routine to stay productive',
    ),
    OnboardingPageData(
      image: AppImages.onboard_3,
      title: 'Organize your tasks',
      description:
          'You can organize your daily tasks by adding your tasks into separate categories',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    final _sc = SizeConfig(context: context);

    return PageView.builder(
      itemCount: pages.length,
      onPageChanged: pageChangeCallback,
      itemBuilder: (context, index) {
        final data = pages[index];

        return Scaffold(
          appBar: AppBar(toolbarHeight: 0, elevation: 0),
          body: Container(
            color: AppColors.black,
            width: double.infinity,
            padding: EdgeInsets.symmetric(horizontal: 4.w),
            child: SafeArea(
              child: Column(
                children: [
                  Align(
                    alignment: Alignment.topLeft,
                    child: TextButton(
                      onPressed: () {
                        context
                            .read<OnboardingCubit>()
                            .persistOnboardingStatus();

                        context.goNamed('auth');
                      },
                      child: AutoSizeText(
                        'Skip',
                        style: AppStyles.textStyleTextButton(),
                      ),
                    ),
                  ),
                  SvgPicture.asset(
                    data.image,
                    height: 37.h,
                  ),
                  _sc.spacer(),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: List<Widget>.generate(pages.length, _buildDot),
                  ),
                  SizedBox(height: 5.h),
                  AutoSizeText(
                    data.title,
                    style: AppStyles.textStyleTitle(),
                    textAlign: TextAlign.center,
                  ),
                  _sc.spacer(),
                  _sc.spacer(),
                  AutoSizeText(
                    data.description,
                    style: AppStyles.textStyleBodyMedium(),
                    textAlign: TextAlign.center,
                  ),
                  // const Spacer(),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: List<Widget>.generate(pages.length, _buildDot),
                  ),
                  // const Spacer(),
                  // AppButton(
                  //   onTap: () {
                  //     if (isLastPage) {
                  //       context
                  //           .read<OnboardingCubit>()
                  //           .persistOnboardingStatus();

                  //       context.goNamed('auth');
                  //     } else {
                  //       liquidController.animateToPage(page: index + 1);
                  //     }
                  //   },
                  //   width: double.infinity,
                  //   label: isLastPage ? 'Get Started' : 'Next',
                  //   // fontColor: Colors.white,
                  // ),
                  // const Spacer(),
                ],
              ),
            ),
          ),
        );
      },
    );

    // LiquidSwipe.builder(
    //   itemCount: pages.length,
    //   initialPage: page,
    //   liquidController: liquidController,
    //   waveType: WaveType.liquidReveal,
    //   enableLoop: true,
    //   onPageChangeCallback: pageChangeCallback,
    //   itemBuilder: (_, int index) {
    //     final item = pages[index];

    //     final isLastPage = pages.length - 1 == index;

    //     return Scaffold(
    //       appBar: AppBar(toolbarHeight: 0, elevation: 0),
    //       body: Container(
    //         color: Colors.white,
    //         width: double.infinity,
    //         padding: EdgeInsets.symmetric(horizontal: 4.w),
    //         child: SafeArea(
    //           child: Column(
    //             children: [
    //               Align(
    //                 alignment: Alignment.topRight,
    //                 child: TextButton(
    //                   onPressed: () {
    //                     context
    //                         .read<OnboardingCubit>()
    //                         .persistOnboardingStatus();

    //                     context.goNamed('auth');
    //                   },
    //                   child: AutoSizeText(
    //                     'Skip',
    //                     style: AppStyles.textStyleTextButton(),
    //                   ),
    //                 ),
    //               ),
    //               Image.asset(
    //                 item.image,
    //                 height: 37.h,
    //               ),
    //               SizedBox(height: 5.h),
    //               AutoSizeText(
    //                 item.title,
    //                 style: AppStyles.textStyleTitle(),
    //                 textAlign: TextAlign.center,
    //               ),
    //               _sc.spacer(),
    //               _sc.spacer(),
    //               AutoSizeText(
    //                 item.description,
    //                 style: AppStyles.textStyleBodyMedium(),
    //                 textAlign: TextAlign.center,
    //               ),
    //               const Spacer(),
    //               Row(
    //                 mainAxisAlignment: MainAxisAlignment.center,
    //                 children: List<Widget>.generate(pages.length, _buildDot),
    //               ),
    //               const Spacer(),
    //               AppButton(
    //                 onTap: () {
    //                   if (isLastPage) {
    //                     context
    //                         .read<OnboardingCubit>()
    //                         .persistOnboardingStatus();

    //                     context.goNamed('auth');
    //                   } else {
    //                     liquidController.animateToPage(page: index + 1);
    //                   }
    //                 },
    //                 width: double.infinity,
    //                 label: isLastPage ? 'Get Started' : 'Next',
    //                 // fontColor: Colors.white,
    //               ),
    //               const Spacer(),
    //             ],
    //           ),
    //         ),
    //       ),
    //     );
    //   },
    // );
  }

  Widget _buildDot(int index) {
    final selectedness = Curves.easeOut.transform(
      max(
        0.0,
        1.0 - (page - index).abs(),
      ),
    );
    final zoom = 1.0 + (2.0 - 1.0) * selectedness;

    return Container(
      width: 25.0,
      child: Center(
        child: Material(
          color: AppColors.white,
          type: MaterialType.circle,
          child: Container(
            width: 8.0 * zoom,
            height: 8.0 * zoom,
          ),
        ),
      ),
    );
  }
}

class OnboardingPageData {
  final String image;
  final String title;
  final String description;

  OnboardingPageData({
    required this.image,
    required this.title,
    required this.description,
  });
}
