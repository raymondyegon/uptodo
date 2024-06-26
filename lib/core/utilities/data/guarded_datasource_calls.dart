// Flutter imports:

import 'package:flutter/foundation.dart';
import 'package:uptodo/core/platform/platform.dart';

// Project imports:
import '../../failures.dart';
import '../error_helpers.dart';
import '../logging_utils.dart';

/// Make an API call that internally handles exceptions. Throws a [NetworkFailure].
///
/// This is intended to always be used for ALL remoteDatasurce calls in the repository layer.
/// This means there'll be no need for API-related try-catch blocks in the repository layer.
///
/// The named [*Msg] params may be used to customise the error message depending
/// on the error type. For example, `notFoundMsg` can be set to "User not found",
/// which is descriptive enough to be sent to the Presentation layer for use in
/// a [UIError].
/// Also, you can set `anyMsg` to force all error messages no matter the type to
/// one custom message.
Future<T> guardedApiCall<T>(
  Function run, {
  String? anyMsg,
  String? serverErrorMsg,
  String? badRequestMsg,
  String Function(ApiFailure)? getBadRequestMsg,
  String? notFoundMsg,
  String Function(ApiFailure)? getNotFoundMsg,
  String? unauthenticatedMsg,
  String Function(ApiFailure)? getUnauthenticatedMsg,
  String? notPermittedMsg,
  String Function(ApiFailure)? getNotPermittedMsg,
  String? validationFailedMsg,
  String Function(ApiFailure)? getValidationFailedMsg,
  String? unknownMsg,
  String Function(ApiFailure)? getfailureMsg,
}) async {
  try {
    final val = await run() as T;
    return val;
  } on ApiFailure catch (e, s) {
    throw getNetworkFailureFromApiFailure(
      e,
      s,
      anyMsg: anyMsg,
      serverErrorMsg: serverErrorMsg ?? e.message,
      badRequestMsg: getBadRequestMsg?.call(e) ?? badRequestMsg ?? e.message,
      notFoundMsg: getNotFoundMsg?.call(e) ?? notFoundMsg ?? e.message,
      unauthenticatedMsg:
          getUnauthenticatedMsg?.call(e) ?? unauthenticatedMsg ?? e.message,
      notPermittedMsg:
          getNotPermittedMsg?.call(e) ?? notPermittedMsg ?? e.message,
      validationFailedMsg:
          getValidationFailedMsg?.call(e) ?? validationFailedMsg ?? e.message,
      unknownMsg: unknownMsg ?? e.message,
      failureMsg: getfailureMsg?.call(e) ?? e.message,
    );
  } catch (e, s) {
    // logger.e('${e.toString()}');
    if (kDebugMode) {
      logger.e('Internal exception at API: ${e.toString()} \n$run\n$s');
    }
    // const msg = 'An exception occured while querying the server';
    // reportError('$msg: $e', s);
    throw NetworkFailure(AppStrings.genericExceptionMessage);
  }
}

Future<T> guardedCacheAccess<T>(Function run) async {
  try {
    final val = await run() as T;
    return val;
  } on CacheFailure catch (_) {
    if (kDebugMode) logger.e('Exception at Cache Access: ${_.message}');
    rethrow;
  } catch (_, s) {
    logger.e(_.toString());
    throw getCacheFailureFromDBFailure(
        DBFailure(AppStrings.dbExceptionMessage), s);
  }
}
