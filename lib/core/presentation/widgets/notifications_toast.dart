import 'package:uptodo/core/platform/platform.dart';
import 'package:cool_alert/cool_alert.dart';
import 'package:flutter/material.dart';
import 'package:motion_toast/motion_toast.dart';
import 'package:sizer/sizer.dart';

enum NotificationType {
  SUCCESS,
  FAIL,
  WARN,
  INFO,
}

class NotificationToast {
  // Notification builder
  static void buildNotification({
    required BuildContext context,
    required NotificationType type,
    String? title,
    required String description,
  }) {
    final _sc = SizeConfig(context: context);

    switch (type) {
      case NotificationType.WARN:
        MotionToast.warning(
          title: Text(title ?? "Warning"),
          description: Text(description),
          position: MotionToastPosition.center,
          barrierColor: Colors.black45,
        ).show(context);
        return;

      case NotificationType.FAIL:
        CoolAlert.show(
          context: context,
          type: CoolAlertType.error,
          text: description,
          textTextStyle: AppStyles.textStyleBodyMedium(),
          confirmBtnColor: AppColors.primary,
        );

        return;

      case NotificationType.SUCCESS:
        MotionToast.success(
          title: Text(title ?? "Success"),

          description: Text(description),
          barrierColor: Colors.black45,
          position: MotionToastPosition.top,
          // width: double.infinity,
          // height: _sc.heightScaledSize(45),
          margin: EdgeInsets.symmetric(horizontal: 3.w),
          constraints: BoxConstraints(
            minHeight: _sc.heightScaledSize(45),
            maxHeight: _sc.heightScaledSize(60),
            minWidth: double.infinity,
          ),
        ).show(context);

        return;

      default:
        throw 'Invalid Notification type';
    }
  }
}
