import 'package:giga_chad_starter/core/rest_client/rest_client.dart';
import 'package:meta/meta.dart';
import 'package:path/path.dart' as p;

@immutable
abstract base class RestClientBase implements RestClient {
  RestClientBase({required String baseUrl}) : baseUri = Uri.parse(baseUrl);

  final Uri baseUri;

  @protected
  @visibleForTesting
  Uri buildUri({required String path}) {
    final finalPath = p.canonicalize(p.join(baseUri.path, path));
    return baseUri.replace(
      path: finalPath,
    );
  }
}
