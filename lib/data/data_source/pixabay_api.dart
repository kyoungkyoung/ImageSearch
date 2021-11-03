import 'package:http/http.dart' as http;
import 'package:image_search_app/domain/model/pixabay_image.dart';
import 'dart:convert';
import 'package:image_search_app/domain/repository/image_repository.dart';

class PixabayApi implements ImageRepository {

  @override
  Future<List<PixabayImage>> fetchList(String search) async {
    String url =
        "https://pixabay.com/api/?key=23724478-929bd40db53cfdb192d59041a&q=$search&image_type=photo";
    final response = await http.get(Uri.parse(url));
    Iterable jsonResponse = jsonDecode(response.body)['hits'];
    List<PixabayImage> list =
    jsonResponse.map((e) => PixabayImage.fromJson(e)).toList();
    return list;
  }
}
