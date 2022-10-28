import 'package:flutter_test/flutter_test.dart';
import 'package:integration_test/integration_test.dart';

void snap(String name) {

  final binding = IntegrationTestWidgetsFlutterBinding.ensureInitialized();

  binding.takeScreenshot("screenshots/" + name + ".png");
}
