
import 'liveview_client_platform_interface.dart';

class LiveviewClient {
  Future<String?> getPlatformVersion() {
    return LiveviewClientPlatform.instance.getPlatformVersion();
  }
}
