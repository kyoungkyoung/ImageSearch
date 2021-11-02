import 'dart:math';

import 'package:flutter_test/flutter_test.dart';
import 'package:image_search_app/domain/model/image.dart';
import 'package:image_search_app/domain/repository/image_repository.dart';
import 'package:image_search_app/presentation/main/search_page5_view_model.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';

import 'search_page5_view_model_test.mocks.dart';

@GenerateMocks([ImageRepository]) // Mock을 사용하기 위해 이렇게 어노테이션 걸어줌
void main() {
  test('가져오는 데이터 리스트는 10개이어야한다.', () async {
    final mockRepository = MockImageRepository();
    final searchPage5ViewModel = SearchPage5ViewModel(mockRepository);

    // 가정
    when(mockRepository.fetchList('iphone')) //mockRepository로 값을 이렇게 주면 실행부분에서 viewModel이 있으니까
    .thenAnswer((realInvocation) async => testImageList);

    // 실행
    final result = await searchPage5ViewModel.getFetchList('iphone'); //viewModel 실행해주면 viewModel test가능

    // 확인
    expect(result.length, min(10, result.length)); // result.lengh가 10개냐

    // 검증
    verify(mockRepository.fetchList('iphone'));
  });
}

final testImageList = [
  PixabayImage('test', 'http://aaa'),
  PixabayImage('test', 'http://aaa'),
  PixabayImage('test', 'http://aaa'),
  PixabayImage('test', 'http://aaa'),
  PixabayImage('test', 'http://aaa'),
  PixabayImage('test', 'http://aaa'),
  PixabayImage('test', 'http://aaa'),
  PixabayImage('test', 'http://aaa'),
  PixabayImage('test', 'http://aaa'),
  PixabayImage('test', 'http://aaa')
];