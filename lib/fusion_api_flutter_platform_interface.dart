import 'package:plugin_platform_interface/plugin_platform_interface.dart';

import 'fusion_api_flutter_method_channel.dart';

abstract class FusionApiFlutterPlatform extends PlatformInterface {
  /// Constructs a FusionApiFlutterPlatform.
  FusionApiFlutterPlatform() : super(token: _token);

  static final Object _token = Object();

  static FusionApiFlutterPlatform _instance = MethodChannelFusionApiFlutter();

  /// The default instance of [FusionApiFlutterPlatform] to use.
  ///
  /// Defaults to [MethodChannelFusionApiFlutter].
  static FusionApiFlutterPlatform get instance => _instance;

  /// Platform-specific implementations should set this with their own
  /// platform-specific class that extends [FusionApiFlutterPlatform] when
  /// they register themselves.
  static set instance(FusionApiFlutterPlatform instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

  Future<String?> getPlatformVersion() {
    throw UnimplementedError('platformVersion() has not been implemented.');
  }
}
