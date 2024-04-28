import 'dart:math';

import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter_svg/svg.dart';
import 'package:uptodo/core/platform/platform.dart';
import 'package:uptodo/core/presentation/widgets/buttons/app_button.dart';
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

  late PageController controller;

  @override
  void initState() {
    super.initState();

    controller = PageController();
  }

  pageChangeCallback(int lpage) {
    setState(() {
      page = lpage;
      // controller. = page;
    });
  }

  final pages = [
    OnboardingPageData(
      image: AppImages.onboard_1,
      title: 'Manage your tasks',
      description:
          'You can easily manage all of your daily\ntasks in DoMe for free',
    ),
    OnboardingPageData(
      image: AppImages.onboard_2,
      title: 'Create daily routine',
      description:
          'In Uptodo you can create your\npersonalized routine to stay productive',
    ),
    OnboardingPageData(
      image: AppImages.onboard_3,
      title: 'Organize your tasks',
      description:
          'You can organize your daily tasks by\nadding your tasks into separate categories',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    final sc = SizeConfig(context: context);

    return PageView.builder(
      itemCount: pages.length,
      onPageChanged: pageChangeCallback,
      controller: controller,
      itemBuilder: (context, index) {
        final data = pages[index];

        return Scaffold(
          appBar: AppBar(
            toolbarHeight: 0,
            elevation: 0,
            backgroundColor: AppColors.black,
          ),
          extendBodyBehindAppBar: true,
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

                        // context.goNamed('auth');
                      },
                      child: AutoSizeText(
                        'Skip',
                        style: AppStyles.textStyleTextButton(),
                      ),
                    ),
                  ),
                  SvgPicture.asset(
                    data.image,
                    height: 45.h,
                  ),
                  SizedBox(height: 5.h),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: List<Widget>.generate(pages.length, _buildDot),
                  ),
                  SizedBox(height: 3.h),
                  AutoSizeText(
                    data.title,
                    style: AppStyles.textStyleTitle(),
                    textAlign: TextAlign.center,
                  ),
                  sc.spacer(),
                  sc.spacer(),
                  AutoSizeText(
                    data.description,
                    style: AppStyles.textStyleBodyLarge(),
                    textAlign: TextAlign.center,
                  ),
                  const Spacer(),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      TextButton(
                        onPressed: () {
                          if (page != 0) {
                            controller.animateToPage(
                              page - 1,
                              duration: const Duration(milliseconds: 500),
                              curve: Curves.easeIn,
                            );
                          }
                          // context.goNamed('auth');
                        },
                        child: AutoSizeText(
                          'BACK',
                          style: AppStyles.textStyleTextButton().copyWith(
                            color: AppColors.white.withOpacity(0.44),
                          ),
                        ),
                      ),
                      Flexible(
                        child: AppButton(
                          onTap: () {
                            if (page < 2) {
                              controller.animateToPage(
                                page + 1,
                                duration: const Duration(milliseconds: 500),
                                curve: Curves.easeIn,
                              );
                            }
                          },
                          label: index == 2 ? 'GET STARTED' : 'NEXT',
                          width: index == 2 ? 35.w : 30.w,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
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
