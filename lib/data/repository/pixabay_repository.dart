import 'package:image_search_app/data/data_source/pixabay_api.dart';
import 'package:image_search_app/domain/model/pixabay_image.dart';
import 'package:image_search_app/domain/repository/image_repository.dart';

class PixabayRepository {
  PixabayApi pixabayApi;

  PixabayRepository(this.pixabayApi);

  // Future<List<PixabayImage>> fetchList(String search) async {
    // List<PixabayImage> list = await pixabayApi.fetchList(search);
    // return list;
  // }

}