import 'package:image_search_app/data/data_source/pixabay_api.dart';
import 'package:image_search_app/domain/model/image.dart';
import 'package:image_search_app/domain/repository/image_repository.dart';

class PixabayRepository implements ImageRepository{
  PixabayApi pixabayApi;

  PixabayRepository(this.pixabayApi);

  @override
  Future<List<PixabayImage>> fetchList(String search) async {
    List<PixabayImage> list = await pixabayApi.fetchList(search);
    return list;
  }

}