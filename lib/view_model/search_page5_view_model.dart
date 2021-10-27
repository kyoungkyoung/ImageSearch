import 'package:flutter/material.dart';
import 'package:image_search_app/data/pixabay_api.dart';
import 'package:image_search_app/model/image.dart';
import 'package:provider/provider.dart';

class SearchPage5ViewModel with ChangeNotifier {
  PixabayApi pixabayApi = PixabayApi();
  List<PixabayImage> pixabayImageList = [];

  void getFetchList(String query) async {
    pixabayImageList = await pixabayApi.fetchList(query);
    notifyListeners();
  }

  List<PixabayImage> getList() {
    // notifyListeners();
    return pixabayImageList;
  }
}