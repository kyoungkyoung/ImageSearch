import 'dart:collection';
import 'dart:math';

import 'package:flutter/material.dart';
import 'package:image_search_app/domain/model/image.dart';
import 'package:image_search_app/domain/repository/image_repository.dart';
import 'package:provider/provider.dart';

class SearchPage5ViewModel with ChangeNotifier {
  ImageRepository repository;

  List<PixabayImage> _pixabayImageList = [];
  List<PixabayImage> get pixabayImageList => _pixabayImageList;
  // 빡시게! 값 변경 안되게
  // UnmodifiableListView<PixabayImage> get pixabayImageList => UnmodifiableListView(_pixabayImageList);

  SearchPage5ViewModel(this.repository);

  //test코드 작성 2
  Future<void> getFetchList(String query) async {
      _pixabayImageList = await repository.fetchList(query);
      _pixabayImageList = _pixabayImageList.getRange(0, 10).toList(); //data를 10개만 가져오기
      notifyListeners();
  }


  /* test코드 작성 1
  Future<List<PixabayImage>> getFetchList(String query) async {
    _pixabayImageList = await repository.fetchList(query);
    _pixabayImageList = _pixabayImageList.getRange(0, min(_pixabayImageList.length, 10)).toList(); //data를 10개만 가져오기
    notifyListeners();
    return pixabayImageList;
  }
  */


  //이런 getter는 java방식
  // List<PixabayImage> getList() {
  //   // notifyListeners(); -> error : 끊임없이 그림
  //   return _pixabayImageList;
  // }
}