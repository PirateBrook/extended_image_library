import 'dart:async';

ExtendImageLoadLogger extendImageLoadLogger = ExtendImageLoadLogger();

class ExtendImageLoadLogger {
  StreamController<Map<String, Object>> eventStream =
      StreamController<Map<String, Object>>.broadcast();

  void logEvent(Map<String, Object> params) {}

  void listenEvent(Function(Map<String, Object> params) onEvent) {
    eventStream.stream.listen(onEvent);
  }
}
