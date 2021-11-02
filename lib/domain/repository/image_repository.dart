import 'package:image_search_app/data/repository/pixabay_repository.dart';
import 'package:image_search_app/domain/model/image.dart';

abstract class ImageRepository{

  Future<List<PixabayImage>> fetchList(String search) ;
}