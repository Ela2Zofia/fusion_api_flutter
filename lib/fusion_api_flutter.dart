
import 'fusion_api_flutter_platform_interface.dart';

class FusionApiFlutter {
  Future<String?> getPlatformVersion() {
    return FusionApiFlutterPlatform.instance.getPlatformVersion();
  }
}
