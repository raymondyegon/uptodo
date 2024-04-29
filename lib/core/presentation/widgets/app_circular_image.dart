import 'dart:io';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:uptodo/core/platform/platform.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

enum ImageType { file, svgAsset, imageAsset, networkImage }

class AppCircularImage extends StatelessWidget {
  final String imageUrl;
  final ImageType imageType;
  final bool hasBorder;
  final double radius;
  final double borderWidth;
  final Color borderColor;
  final Color? backgroundColor;
  final BoxFit fit;
  final Widget? fallbackWidget;
  final EdgeInsetsGeometry padding;

  const AppCircularImage({
    super.key,
    required this.imageUrl,
    required this.imageType,
    this.hasBorder = false,
    this.radius = 17,
    this.borderWidth = 2,
    this.borderColor = Colors.white,
    this.backgroundColor,
    this.fit = BoxFit.cover,
    this.fallbackWidget,
    this.padding = EdgeInsets.zero,
  });

  @override
  Widget build(BuildContext context) => Container(
        height: radius * 2,
        width: radius * 2,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(radius),
          color: backgroundColor,
          border: Border.all(
              color: borderColor, width: hasBorder ? borderWidth : 0),
        ),
        padding: padding,
        child: ClipRRect(
          borderRadius: BorderRadius.circular(radius),
          child: imageType == ImageType.networkImage
              ? imageUrl.isEmpty
                  ? CircleAvatar(
                      radius: radius,
                      backgroundColor: AppColors.black2,
                      child: fallbackWidget ??
                          Text(
                            '-',
                            style: Theme.of(context)
                                .textTheme
                                .displaySmall!
                                .copyWith(color: Colors.white),
                          ),
                    )
                  : CachedNetworkImage(
                      imageUrl: imageUrl,
                      useOldImageOnUrlChange: true,
                      fit: fit,
                      height: radius * 2,
                      width: radius * 2,
                      errorWidget: (context, url, error) => CircleAvatar(
                        radius: radius,
                        backgroundColor: Theme.of(context).primaryColor,
                        child: fallbackWidget ??
                            Text(
                              '-',
                              style: Theme.of(context)
                                  .textTheme
                                  .displaySmall!
                                  .copyWith(color: Colors.white),
                            ),
                      ),
                      progressIndicatorBuilder: (_, __, ___) => const Center(
                        child: CircularProgressIndicator(
                          color: AppColors.primary,
                        ),
                      ),
                    )
              : imageType == ImageType.imageAsset
                  ? Image.asset(
                      imageUrl,
                      fit: fit,
                    )
                  : imageType == ImageType.file
                      ? Image.file(
                          File(imageUrl),
                          fit: fit,
                        )
                      : SvgPicture.asset(
                          imageUrl,
                          fit: fit,
                        ),
        ),
      );
}
