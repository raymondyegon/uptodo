// Dart imports:
import 'dart:async';

// Package imports:
import 'package:shared_preferences/shared_preferences.dart';

// Project imports:
import 'package:uptodo/core/data/datasources/local_datasource_base.dart';
import 'package:uptodo/core/platform/platform.dart';

abstract class OnboardingLocalDatasource implements LocalDatasource {
  Future<bool> checkOnboarding({bool persist = false});
}

class OnboardingLocalDatasourceImpl implements OnboardingLocalDatasource {
  @override
  StreamController get dataStreamController => throw UnimplementedError();

  @override
  void dispose() {}

  @override
  Future<bool> checkOnboarding({bool persist = false}) async {
    final sPref = await SharedPreferences.getInstance();
    if (persist) {
      await sPref.setBool(AppKeys.hasSeenOnboarding, true);
      return persist;
    } else {
      return sPref.getBool(AppKeys.hasSeenOnboarding) ?? false;
    }
  }
}
