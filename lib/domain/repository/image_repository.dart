
import 'package:image_search_app/data/data_source/result.dart';
import 'package:image_search_app/domain/model/pixabay_image.dart';

abstract class ImageRepository{

  Future<Result<List<PixabayImage>>> fetchList(String search) ;
}