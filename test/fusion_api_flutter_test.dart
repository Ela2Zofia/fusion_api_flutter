import 'package:flutter_test/flutter_test.dart';
import 'package:fusion_api_flutter/fusion_api_flutter.dart';
import 'package:fusion_api_flutter/fusion_api_flutter_platform_interface.dart';
import 'package:fusion_api_flutter/fusion_api_flutter_method_channel.dart';
import 'package:plugin_platform_interface/plugin_platform_interface.dart';

class MockFusionApiFlutterPlatform
    with MockPlatformInterfaceMixin
    implements FusionApiFlutterPlatform {

  @override
  Future<String?> getPlatformVersion() => Future.value('42');
}

void main() {
  final FusionApiFlutterPlatform initialPlatform = FusionApiFlutterPlatform.instance;

  test('$MethodChannelFusionApiFlutter is the default instance', () {
    expect(initialPlatform, isInstanceOf<MethodChannelFusionApiFlutter>());
  });

  test('getPlatformVersion', () async {
    FusionApiFlutter fusionApiFlutterPlugin = FusionApiFlutter();
    MockFusionApiFlutterPlatform fakePlatform = MockFusionApiFlutterPlatform();
    FusionApiFlutterPlatform.instance = fakePlatform;

    expect(await fusionApiFlutterPlugin.getPlatformVersion(), '42');
  });
}
