import 'dart:collection';
import 'dart:math';

import 'package:flutter/material.dart';
import 'package:image_search_app/domain/repository/image_repository.dart';
import 'package:image_search_app/presentation/main/pixabay_image_state.dart';
import 'package:provider/provider.dart';

class SearchPage5ViewModel with ChangeNotifier {
  ImageRepository repository;
  PixabayImageState _state = PixabayImageState();

  PixabayImageState get state => _state;

  SearchPage5ViewModel(this.repository);

  //test코드 작성 2
  Future<void> getFetchList(String query) async {
    _state = state.copyWith(isLoading: true);
    // _state.isLoading = true;
    notifyListeners(); // isLoading이 바뀌었을때 한번 알려주고

    final results = await repository.fetchList(query);
    _state = _state.copyWith(
        pixabayImageList: results
            .getRange(
              0,
              min(10, results.length),
            )
            .toList(),
        isLoading: false);
    notifyListeners(); // isLoading이 또 바뀌면 다시 알려주고
  }
}
