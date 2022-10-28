import 'package:flutter_test/flutter_test.dart';
import 'package:integration_test/integration_test.dart';
import 'dart:io' show Platform;

void snap(String name) async {

  final binding = IntegrationTestWidgetsFlutterBinding.ensureInitialized();

  if (Platform.isAndroid || Platform.isIOS) {
    await binding.convertFlutterSurfaceToImage();
  }

  binding.takeScreenshot("screenshots/" + name + ".png");
}
