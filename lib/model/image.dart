class PixabayImage{
  String tags;
  String previewURL;
  // int total;
  // var hits;


  PixabayImage(this.tags, this.previewURL);

  PixabayImage.fromJson(Map<String, dynamic> json){
    tags = json['hits'][0]['tags'];
    previewURL = json['hits'][0]['previewURL'];
    // total = json['total'];
    // hits = json['hits'];
  }

  @override
  String toString() {
    return "PixabayImage{tags: $tags, previewURL: $previewURL}";
  }

}