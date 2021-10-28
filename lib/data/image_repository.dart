import 'package:image_search_app/model/image.dart';

abstract class ImageRepository {

  Future<List<PixabayImage>> fetchList(String search) ;

}