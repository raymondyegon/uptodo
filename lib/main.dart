import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:logger/logger.dart';
import 'package:path_provider/path_provider.dart';

import 'core/di/core_dependencies.dart';
import 'core/platform/platform.dart';
import 'main_prod.dart';
import 'main_stage.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);

  // Setup logger, only show warning and higher in release mode.
  if (kReleaseMode) {
    Logger.level = Level.warning;
  } else {
    Logger.level = Level.debug;
  }

  await Hive.initFlutter();

  // register our service locator
  configureDependencies();

  // setup storage paths
  HydratedBloc.storage = await HydratedStorage.build(
    storageDirectory: kIsWeb
        ? HydratedStorage.webStorageDirectory
        : await getTemporaryDirectory(),
  );

  // initialize connection listener
  ConnectionStatusSingleton.getInstance().initialize();

  late StatelessWidget app;

  if (EnvironmentConfig.ENVIRONMENT_VAR == 'STAGING') {
    app = getStage();
  } else if (EnvironmentConfig.ENVIRONMENT_VAR == 'PRODUCTION') {
    app = getProd();
  }

  runApp(app);
}
