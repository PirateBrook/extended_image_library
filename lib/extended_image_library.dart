library extended_image_library;

import 'dart:io';

export 'package:http_client_helper/http_client_helper.dart' hide Response;

export 'src/extended_asset_bundle_image_provider.dart';
export 'src/extended_file_image_provider.dart';
export 'src/extended_image_provider.dart';
export 'src/extended_memory_image_provider.dart';
export 'src/extended_resize_image_provider.dart';
export 'src/network/extended_network_image_provider.dart';
export 'src/platform.dart';
export 'src/exposed/logger.dart';

class CustomHttpClient {
  factory CustomHttpClient() {
    return _instance;
  }

  CustomHttpClient._();

  static final CustomHttpClient _instance = CustomHttpClient._();

  HttpClient? _client;

  HttpClient? get client => _client;

  void setCustomClient(HttpClient customClient) {
    _client = customClient;
  }
}
