class PixabayImage {
  String tags;
  String webformatURL;
  var hits;

  PixabayImage(this.tags, this.webformatURL, this.hits);

  PixabayImage.fromJson(Map<String, dynamic> json) {
    tags = json['tags'];
    webformatURL = json['webformatURL'];
  }

  @override
  String toString() {
    return "PixabayImage{tags: $tags, webformatURL: $webformatURL}";
  }
}
