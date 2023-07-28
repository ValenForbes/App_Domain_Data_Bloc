import 'package:gif_repository/src/models/gif_model.dart';
import 'package:gif_service/gif_service.dart';

/// {@template gif_repository}
/// My Gif Repository
/// {@endtemplate}
class GifRepository {
  /// {@macro gif_repository}
  /// esto es una inyección de dependencias para hacer los test
   GifRepository({GifService? gifService })
   : _gifService = gifService ?? GifService() ;
  final GifService _gifService;

  Future<List<GifModel>> getUrls() async {
    final List<GifModel> urls = [];
    try {
      final listUrls = await _gifService.fetchGifs();

      for (final url in listUrls) {
        urls.add(GifModel(url));
      }
      return urls;
    } catch (_) {
      throw Exception();
    }
  }
}
