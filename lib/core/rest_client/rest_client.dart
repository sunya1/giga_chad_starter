import 'package:dio/dio.dart';

abstract class RestClient {
  Future<T?> get<T>(
    String path, {
    Map<String, Object?>? headers,
    Map<String, Object?>? queryParams,
    Options? options,
  });

  Future<T?> post<T>(
    String path, {
    Map<String, Object?>? body,
    Map<String, Object?>? headers,
    Map<String, Object?>? queryParams,
    Options options,
  });

  Future<T?> put<T>(
    String path, {
    Map<String, Object?>? body,
    Map<String, Object?>? headers,
    Map<String, Object?>? queryParams,
    Options options,
  });

  Future<T?> delete<T>(
    String path, {
    Map<String, Object?>? headers,
    Map<String, Object?>? queryParams,
    Options options,
  });

  Future<T?> patch<T>(
    String path, {
    Map<String, Object?>? body,
    Map<String, Object?>? headers,
    Map<String, Object?>? queryParams,
    Options options,
  });
}

enum RestClientType {
  authorized , 
  unauthorized , 
  service , 
}
