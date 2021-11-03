
import 'package:image_search_app/domain/model/pixabay_image.dart';

abstract class ImageRepository{

  Future<List<PixabayImage>> fetchList(String search) ;
}