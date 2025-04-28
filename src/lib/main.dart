import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:halo/app/app.bottomsheets.dart';
import 'package:halo/app/app.dialogs.dart';
import 'package:halo/app/app.locator.dart';
import 'package:halo/features/app/app_view.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  try {
    await SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
    ]);

    await setupLocator();
    setupDialogUi();
    setupBottomSheetUi();

    runApp(const AppView());
  } catch (e) {
    debugPrint('Error during app initialization: $e');
    runApp(
      MaterialApp(
        home: Scaffold(
          body: Center(
            child: Text(
              'Something went wrong while starting the app. '
              'Please try again or contact support if the problem persists.',
              textAlign: TextAlign.center,
              style: TextStyle(color: Colors.red[700]),
            ),
          ),
        ),
      ),
    );
  }
}
