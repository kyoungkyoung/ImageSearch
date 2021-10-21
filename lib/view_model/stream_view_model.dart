import 'dart:async';

import 'package:image_search_app/data/pixabay_api.dart';
import 'package:image_search_app/model/image.dart';

class StreamViewModel{
  String query;
  final _pixabayApi = PixabayApi();
  final _pixabayImage = PixabayImage();

  StreamViewModel({required this.query});

  final _pixabayApiStreamController = StreamController<Future<List<PixabayImage>>>();

  Stream<Future<List<PixabayImage>>> get pixabayApiStreamController => _pixabayApiStreamController.stream;

  void getFetchList(String query){

    _pixabayApi.fetchList(query);
    _pixabayApiStreamController.add(_pixabayApi.fetchList(query));
  }


}