class PixabayImage {
  String tags;
  String webformatURL;
  var hits;

  PixabayImage(this.tags, this.webformatURL, this.hits);

  PixabayImage.fromJson(Map<String, dynamic> json) {
    // hits = json['hits'];
    // print("=======================");
    // print(hits);
    // print(hits.length);
    tags = json['tags'];
    webformatURL = json['webformatURL'];
  }

  // hits.fromJson(Map<String, dynamic> json){
  //
  // }

  @override
  String toString() {
    return "PixabayImage{tags: $tags, webformatURL: $webformatURL}";
  }
}
