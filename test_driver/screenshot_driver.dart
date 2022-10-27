//test_driver/screenshot_driver.dart
import 'dart:io';
import 'package:flutter_driver/flutter_driver.dart';
import 'package:integration_test/integration_test_driver_extended.dart';

Future<void> main() async {
  final FlutterDriver driver = await FlutterDriver.connect();
  await integrationDriver(
    driver: driver,
    onScreenshot: (String screenshotName, List<int> screenshotBytes) async {
      final File image =
          await File("screenshots/" + screenshotName).create(recursive: true);
      image.writeAsBytesSync(screenshotBytes);
      return true;
    },
  );
}
