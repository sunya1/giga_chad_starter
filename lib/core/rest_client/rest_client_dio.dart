import 'package:dio/dio.dart';
import 'package:giga_chad_starter/core/exceptions/exceptions.dart';
import 'package:giga_chad_starter/core/rest_client/exceptions/dio_exception_factory.dart';
import 'package:giga_chad_starter/core/rest_client/rest_client_base.dart';
import 'package:meta/meta.dart';

final class RestClientDio extends RestClientBase {
  RestClientDio({required super.baseUrl, required Dio dio}) : _dio = dio;

  final Dio _dio;
  final dioExceptionFactory = DioExceptionFactory();

  /// Send [Dio] request
  @protected
  @visibleForTesting
  Future<T?> sendRequest<T>({
    required String path,
    required String method,
    Map<String, Object?>? body,
    Map<String, Object?>? headers,
    Map<String, Object?>? queryParams,
    Options? option,
  }) async {
    try {
      final uri = buildUri(path: path);
      final options = Options(
        headers: option?.headers ?? headers,
        method: method,
        contentType: option?.contentType ?? 'application/json',
        responseType: option?.responseType ?? ResponseType.json,
        receiveTimeout: option?.receiveTimeout,
      );

      final response = await _dio.request<T>(
        uri.toString(),
        data: body,
        options: options,
        queryParameters: queryParams , 
      );

      return response.data;
    } on RemoteException {
      rethrow;
    } on DioException catch (e) {
      Error.throwWithStackTrace(
        dioExceptionFactory.fromDioException(e),
        e.stackTrace,
      );
    } on Object catch (e, stack) {
      Error.throwWithStackTrace(
        ClientResponseException(errorMsg: e.toString(), errorData: e),
        stack,
      );
    }
  }

  @override
  Future<T?> delete<T>(
    String path, {
    Map<String, Object?>? headers,
    Map<String, Object?>? queryParams,
    Options? options,
  }) =>
      sendRequest<T>(
        path: path,
        method: 'DELETE',
        headers: headers,
        queryParams: queryParams,
        option: options,
      );

  @override
  Future<T?> get<T>(
    String path, {
    Map<String, Object?>? headers,
    Map<String, Object?>? queryParams,
    Options? options,
  }) =>
      sendRequest<T>(
        path: path,
        method: 'GET',
        headers: headers,
        queryParams: queryParams,
        option: options,
      );

  @override
  Future<T?> patch<T>(
    String path, {
    Map<String, Object?>? body,
    Map<String, Object?>? headers,
    Map<String, Object?>? queryParams,
    Options? options,
  }) =>
      sendRequest<T>(
        path: path,
        method: 'PATCH',
        body: body,
        headers: headers,
        queryParams: queryParams,
        option: options,
      );

  @override
  Future<T?> post<T>(
    String path, {
    Map<String, Object?>? body,
    Map<String, Object?>? headers,
    Map<String, Object?>? queryParams,
    Options? options,
  }) =>
      sendRequest<T>(
        path: path,
        method: 'POST',
        body: body,
        headers: headers,
        queryParams: queryParams,
        option: options,
      );

  @override
  Future<T?> put<T>(
    String path, {
    Map<String, Object?>? body,
    Map<String, Object?>? headers,
    Map<String, Object?>? queryParams,
    Options? options,
  }) =>
      sendRequest<T>(
        path: path,
        method: 'PUT',
        body: body,
        headers: headers,
        queryParams: queryParams,
        option: options,
      );
}
