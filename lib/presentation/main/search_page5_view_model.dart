import 'dart:async';
import 'dart:collection';
import 'dart:math';

import 'package:flutter/material.dart';
import 'package:image_search_app/data/data_source/exceptions.dart';
import 'package:image_search_app/domain/repository/result.dart';
import 'package:image_search_app/domain/model/pixabay_image.dart';
import 'package:image_search_app/domain/repository/image_repository.dart';
import 'package:image_search_app/presentation/main/pixabay_image_state.dart';
import 'package:image_search_app/presentation/main/ui_event.dart';

class SearchPage5ViewModel with ChangeNotifier {
  ImageRepository repository;
  PixabayImageState _state = PixabayImageState();

  PixabayImageState get state => _state;

  SearchPage5ViewModel(this.repository);

  final _eventController = StreamController<UiEvent>();
  Stream<UiEvent> get eventStream => _eventController.stream;

  //test코드 작성 2
  Future<void> getFetchList(String query) async {
    _state = state.copyWith(isLoading: true);
    // _state.isLoading = true;
    notifyListeners(); // isLoading이 바뀌었을때 한번 알려주고

    final Result<List<PixabayImage>> results =
        await repository.fetchList(query);

    if (results is Success<List<PixabayImage>>) {
      // final pixabayImageList = (results as Success<List<PixabayImage>>).data;
      final pixabayImageList = results.data;
      _state = _state.copyWith(
          pixabayImageList: pixabayImageList
              .getRange(
                0,
                min(10, pixabayImageList.length),
              )
              .toList(),
          isLoading: false);
      notifyListeners(); // isLoading이 또 바뀌면 다시 알려주고
    } else if (results is Error) {
      if ((results as Error).e is IllegalStateException) {
        print('에러남 잘못함');

        //snackbar event
        _eventController.add(UiEvent.showSnackBar('네트워크 에러가 발생했습니다'));
      } else {
        print((results as Error).e.toString());
      }
    }
  }
}