import 'package:image_search_app/data/data_source/exceptions.dart';
import 'package:image_search_app/domain/model/pixabay_image.dart';
import 'dart:convert';
import 'package:dio/dio.dart';

class PixabayDioApi {

  Future<List<PixabayImage>> fetchList(String search) async {
    try {
      String url =
          "https://pixabay.com/api/?key=23724478-929bd40db53cfdb192d59041a&q=$search&image_type=photo";
      Response<dynamic> response = await Dio().get(url);
      Map<String, dynamic> result =
          response.data; //dio는 값이 map으로 오고, http는 값이 String 으로 온다.
      Iterable jsonResponse = result['hits'];
      List<PixabayImage> list =
          jsonResponse.map((e) => PixabayImage.fromJson(e)).toList();
      return list;
    } catch (e) {
      throw IllegalStateException('네티워크 에러');
    }
  }
}
