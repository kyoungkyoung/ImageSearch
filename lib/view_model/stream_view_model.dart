import 'dart:async';

import 'package:image_search_app/data/pixabay_api.dart';
import 'package:image_search_app/model/image.dart';

class StreamViewModel{
  String query = 'iphone';
  final _pixabayApi = PixabayApi();

  StreamViewModel({required this.query});

  final _pixabayApiStreamController = StreamController<List<PixabayImage>>();

  Stream<List<PixabayImage>> get pixabayApiStreamController => _pixabayApiStreamController.stream;

  void getFetchList(String query) async {

    List<PixabayImage> list = await _pixabayApi.fetchList(query);
    _pixabayApiStreamController.add(list);
  }


}