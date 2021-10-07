class PixabayImage {
  String tags;
  String webformatURL;
  var hits;

  PixabayImage(this.tags, this.webformatURL, this.hits);

  PixabayImage.fromJson(Map<String, dynamic> json) {
    hits = json['hits'];
    print("=======================");
    print(hits);
    print(hits.length);
    tags = json['hits'][0]['tags'];
    webformatURL = json['hits'][0]['webformatURL'];
  }

  // hits.fromJson(Map<String, dynamic> json){
  //
  // }

  @override
  String toString() {
    int count;
    return "PixabayImage{tags: $tags, webformatURL: $webformatURL}";
  }
}
