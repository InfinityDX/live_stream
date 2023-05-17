import 'dart:async';

import 'package:video_stream/camera.dart';

class CameraHelper {
  CameraHelper._();
  static List<CameraDescription> _cameras = [];
  static bool get isInitialized => _cameras.isNotEmpty;
  static List<CameraDescription> get cameras => _cameras;
  static FutureOr<void> init() async {
    _cameras = await availableCameras();
  }
}
