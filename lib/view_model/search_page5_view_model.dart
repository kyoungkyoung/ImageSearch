import 'package:flutter/material.dart';
import 'package:image_search_app/data/image_repository.dart';
import 'package:image_search_app/data/pixabay_api.dart';
import 'package:image_search_app/model/image.dart';
import 'package:provider/provider.dart';

class SearchPage5ViewModel with ChangeNotifier {
  // PixabayApi pixabayApi = PixabayApi();
  ImageRepository repository;
  List<PixabayImage> pixabayImageList = [];


  SearchPage5ViewModel(this.repository);

  void getFetchList(String query) async {
      pixabayImageList = await repository.fetchList(query);
      notifyListeners();

  }

  List<PixabayImage> getList() {
    // notifyListeners();
    return pixabayImageList;
  }
}