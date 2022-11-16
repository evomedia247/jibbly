import 'package:plugin_platform_interface/plugin_platform_interface.dart';

import 'liveview_client_method_channel.dart';

abstract class LiveviewClientPlatform extends PlatformInterface {
  /// Constructs a LiveviewClientPlatform.
  LiveviewClientPlatform() : super(token: _token);

  static final Object _token = Object();

  static LiveviewClientPlatform _instance = MethodChannelLiveviewClient();

  /// The default instance of [LiveviewClientPlatform] to use.
  ///
  /// Defaults to [MethodChannelLiveviewClient].
  static LiveviewClientPlatform get instance => _instance;

  /// Platform-specific implementations should set this with their own
  /// platform-specific class that extends [LiveviewClientPlatform] when
  /// they register themselves.
  static set instance(LiveviewClientPlatform instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

  Future<String?> getPlatformVersion() {
    throw UnimplementedError('platformVersion() has not been implemented.');
  }
}
