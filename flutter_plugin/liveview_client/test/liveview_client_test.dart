import 'package:flutter_test/flutter_test.dart';
import 'package:liveview_client/liveview_client.dart';
import 'package:liveview_client/liveview_client_platform_interface.dart';
import 'package:liveview_client/liveview_client_method_channel.dart';
import 'package:plugin_platform_interface/plugin_platform_interface.dart';

class MockLiveviewClientPlatform
    with MockPlatformInterfaceMixin
    implements LiveviewClientPlatform {

  @override
  Future<String?> getPlatformVersion() => Future.value('42');
}

void main() {
  final LiveviewClientPlatform initialPlatform = LiveviewClientPlatform.instance;

  test('$MethodChannelLiveviewClient is the default instance', () {
    expect(initialPlatform, isInstanceOf<MethodChannelLiveviewClient>());
  });

  test('getPlatformVersion', () async {
    LiveviewClient liveviewClientPlugin = LiveviewClient();
    MockLiveviewClientPlatform fakePlatform = MockLiveviewClientPlatform();
    LiveviewClientPlatform.instance = fakePlatform;

    expect(await liveviewClientPlugin.getPlatformVersion(), '42');
  });
}
