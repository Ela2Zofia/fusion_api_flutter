import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

import 'fusion_api_flutter_platform_interface.dart';

/// An implementation of [FusionApiFlutterPlatform] that uses method channels.
class MethodChannelFusionApiFlutter extends FusionApiFlutterPlatform {
  /// The method channel used to interact with the native platform.
  @visibleForTesting
  final methodChannel = const MethodChannel('fusion_api_flutter');

  @override
  Future<String?> getPlatformVersion() async {
    final version = await methodChannel.invokeMethod<String>('getPlatformVersion');
    return version;
  }

  // TODO: Call platform specific functions
  @override
  void login() {
    // TODO: implement login
  }

  @override
  void logout() {
    // TODO: implement logout
  }
  
}
