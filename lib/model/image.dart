class PixabayImage {
  late String tags;
  late String webformatURL;
  late var hits;

  PixabayImage({required this.tags, required this.webformatURL, required this.hits});

  PixabayImage.fromJson(Map<String, dynamic> json) {
    tags = json['tags'];
    webformatURL = json['webformatURL'];
  }

  @override
  String toString() {
    return "PixabayImage{tags: $tags, webformatURL: $webformatURL}";
  }
}
