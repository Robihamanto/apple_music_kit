library apple_music_sdk;

import 'package:flutter/foundation.dart';

/// A AppleMusicSDK crate all of the function needed to play music on Apple Music.
class AppleMusicSDK {

  static String developerToken = '';

  /// Returns [value] plus 1.
  static Future<String?> getUserToken() async {
    if (developerToken.isEmpty) {
      debugPrint('DEVELOPER TOKEN IS EMPTY');
      return null;
    }
    return 'USER TOKEN';
  }

}
