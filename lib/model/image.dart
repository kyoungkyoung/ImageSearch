import 'package:image_search_app/data/pixabay_api.dart';

class PixabayImage {
  // late PixabayApi pixabayApi;

  late String tags;
  late String webformatURL;

  PixabayImage.fromJson(Map<String, dynamic> json) {
    tags = json['tags'];
    webformatURL = json['webformatURL'];
  }

  @override
  String toString() {
    return "PixabayImage{tags: $tags, webformatURL: $webformatURL}";
  }
}
