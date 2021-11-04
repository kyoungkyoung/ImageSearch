import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:image_search_app/data/data_source/pixabay_api.dart';
import 'package:image_search_app/domain/repository/result.dart';
import 'package:image_search_app/domain/model/pixabay_image.dart';
import 'package:image_search_app/domain/repository/image_repository.dart';

class PixabayRepository implements ImageRepository {
  PixabayApi pixabayApi;

  PixabayRepository(this.pixabayApi);

  @override
  Future<Result<List<PixabayImage>>> fetchList(String search) async {
    try {
      List<PixabayImage> list = await pixabayApi.fetchList(search);
      return Result.success(list);
    } on Exception catch (e) {
      return Result.error(e);
    }
  }
}
