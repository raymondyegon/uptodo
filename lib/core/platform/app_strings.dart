// Dart imports:
import 'dart:ui';

// Flutter imports:
import 'package:flutter/material.dart';

class AppStrings {
  static Locale locale = const Locale('en');

  static String privacy_policy = '';

  static String terms_conditions = '';

  static String fontFamily = 'Merriweather';

  // AUTH

  static String get wrongLogin =>
      _localizedValues[locale.languageCode]![UtStringsIds.wrongLogin]!;

  static String get notLoggedIn =>
      _localizedValues[locale.languageCode]![UtStringsIds.notLoggedIn]!;

  static String get buttonSignIn =>
      _localizedValues[locale.languageCode]![UtStringsIds.buttonSignIn]!;

  static String get buttonSignUp =>
      _localizedValues[locale.languageCode]![UtStringsIds.buttonSignUp]!;

  // ERRORS
  static String get connectionTimeOut =>
      _localizedValues[locale.languageCode]![UtStringsIds.connectionTimeOut]!;

  static String get genericExceptionMessage => _localizedValues[
      locale.languageCode]![UtStringsIds.genericExceptionMessage]!;

  static String get noInternetMessage =>
      _localizedValues[locale.languageCode]![UtStringsIds.noInternetMessage]!;

  static String get dbExceptionMessage =>
      _localizedValues[locale.languageCode]![UtStringsIds.dbExceptionMessage]!;

  static String get apiExceptionMessage =>
      _localizedValues[locale.languageCode]![UtStringsIds.apiExceptionMessage]!;

  static String get apiBadRequestMessage => _localizedValues[
      locale.languageCode]![UtStringsIds.apiBadRequestMessage]!;

  static String get apiNotFoundMessage =>
      _localizedValues[locale.languageCode]![UtStringsIds.apiNotFoundMessage]!;

  static String get apiUnauthenticatedMessage => _localizedValues[
      locale.languageCode]![UtStringsIds.apiUnauthenticatedMessage]!;

  static String get apiNotPermittedMessage => _localizedValues[
      locale.languageCode]![UtStringsIds.apiNotPermittedMessage]!;

  static String get validationFailedMessage => _localizedValues[
      locale.languageCode]![UtStringsIds.validationFailedMessage]!;

  static String get networkError =>
      _localizedValues[locale.languageCode]![UtStringsIds.networkError]!;

  static final Map<String, Map<UtStringsIds, String>> _localizedValues = {
    'en': {
      UtStringsIds.wrongLogin: "Wrong username or password",
      UtStringsIds.notLoggedIn: "You are not logged in",
      UtStringsIds.buttonSignIn: 'Sign In',
      UtStringsIds.buttonSignUp: 'Sign Up',
      UtStringsIds.connectionTimeOut:
          'UpTodo is having issues connecting to the internet',
      UtStringsIds.noInternetMessage: 'No internet access',
      UtStringsIds.genericExceptionMessage:
          'Hmm that didn\'t work. We\'re working on it!',
      UtStringsIds.dbExceptionMessage: 'There was a problem accessing cache',
      UtStringsIds.apiExceptionMessage:
          'There was a problem contacting the server. Please try again later',
      UtStringsIds.apiBadRequestMessage:
          'There was a problem making the request to the server',
      UtStringsIds.apiNotFoundMessage: 'Item not found',
      UtStringsIds.apiUnauthenticatedMessage:
          'You need to sign in to perform this action',
      UtStringsIds.validationFailedMessage: 'Validation failed',
      UtStringsIds.apiNotPermittedMessage:
          'You don\'t have permissions to perform this action',
      UtStringsIds.networkError:
          'There was an error connecting to the internet. Please check your network connection and try again',
    },
  };
}

// KEYS STRICTLY FOR ACCESSING THE LOCALISED STRINGS WITHIN EACH LOCALE.
enum UtStringsIds {
  wrongLogin,
  notLoggedIn,
  buttonSignUp,
  buttonSignIn,
  connectionTimeOut,
  genericExceptionMessage,
  noInternetMessage,
  dbExceptionMessage,
  apiExceptionMessage,
  apiBadRequestMessage,
  apiNotFoundMessage,
  apiUnauthenticatedMessage,
  apiNotPermittedMessage,
  validationFailedMessage,
  networkError,
}
