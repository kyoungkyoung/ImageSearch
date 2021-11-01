class PixabayResult {
  late int total;
  late int totalHits;
  late List<Hits> hits;

  PixabayResult({
    required this.total,
    required this.totalHits,
    required this.hits,
  });

  PixabayResult.fromJson(dynamic json) {
    total = json['total'];
    totalHits = json['totalHits'];
    if (json['hits'] != null) {
      hits = [];
      json['hits'].forEach((v) {
        hits.add(Hits.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['total'] = total;
    map['totalHits'] = totalHits;
    map['hits'] = hits.map((v) => v.toJson()).toList();
    return map;
  }
}

/// id : 336378
/// pageURL : "https://pixabay.com/photos/laptop-workspace-desk-workstation-336378/"
/// type : "photo"
/// tags : "laptop, workspace, desk"
/// previewURL : "https://cdn.pixabay.com/photo/2014/05/02/21/50/laptop-336378_150.jpg"
/// previewWidth : 150
/// previewHeight : 99
/// webformatURL : "https://pixabay.com/get/g68edb8d23d836cc3b41433dada9fa3617b4db6fc3b36e3420d1c07ec448abb95cb9b7bdc1e33a98ad79f5d23f4a8d595_640.jpg"
/// webformatWidth : 640
/// webformatHeight : 426
/// largeImageURL : "https://pixabay.com/get/g73886ab7fd6066d116f3642afdd0e4a0d6b01a2f06fb583882d32f1e0c666e2b6a1d365839d3d3392a8008ffa8d01a2b0bc78cd004d0554eb741023c38305c22_1280.jpg"
/// imageWidth : 5616
/// imageHeight : 3744
/// imageSize : 3780005
/// views : 1017515
/// downloads : 504812
/// collections : 4305
/// likes : 1746
/// comments : 442
/// user_id : 242387
/// user : "Free-Photos"
/// userImageURL : "https://cdn.pixabay.com/user/2014/05/07/00-10-34-2_250x250.jpg"

class Hits {
  Hits({
    required this.id,
    required this.pageURL,
    required this.type,
    required this.tags,
    required this.previewURL,
    required this.previewWidth,
    required this.previewHeight,
    required this.webformatURL,
    required this.webformatWidth,
    required this.webformatHeight,
    required this.largeImageURL,
    required this.imageWidth,
    required this.imageHeight,
    required this.imageSize,
    required this.views,
    required this.downloads,
    required this.collections,
    required this.likes,
    required this.comments,
    required this.userId,
    required this.user,
    required this.userImageURL,
  });

  Hits.fromJson(dynamic json) {
    id = json['id'];
    pageURL = json['pageURL'];
    type = json['type'];
    tags = json['tags'];
    previewURL = json['previewURL'];
    previewWidth = json['previewWidth'];
    previewHeight = json['previewHeight'];
    webformatURL = json['webformatURL'];
    webformatWidth = json['webformatWidth'];
    webformatHeight = json['webformatHeight'];
    largeImageURL = json['largeImageURL'];
    imageWidth = json['imageWidth'];
    imageHeight = json['imageHeight'];
    imageSize = json['imageSize'];
    views = json['views'];
    downloads = json['downloads'];
    collections = json['collections'];
    likes = json['likes'];
    comments = json['comments'];
    userId = json['user_id'];
    user = json['user'];
    userImageURL = json['userImageURL'];
  }

  int? id;
  String? pageURL;
  String? type;
  String? tags;
  String? previewURL;
  int? previewWidth;
  int? previewHeight;
  String? webformatURL;
  int? webformatWidth;
  int? webformatHeight;
  String? largeImageURL;
  int? imageWidth;
  int? imageHeight;
  int? imageSize;
  int? views;
  int? downloads;
  int? collections;
  int? likes;
  int? comments;
  int? userId;
  String? user;
  String? userImageURL;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = id;
    map['pageURL'] = pageURL;
    map['type'] = type;
    map['tags'] = tags;
    map['previewURL'] = previewURL;
    map['previewWidth'] = previewWidth;
    map['previewHeight'] = previewHeight;
    map['webformatURL'] = webformatURL;
    map['webformatWidth'] = webformatWidth;
    map['webformatHeight'] = webformatHeight;
    map['largeImageURL'] = largeImageURL;
    map['imageWidth'] = imageWidth;
    map['imageHeight'] = imageHeight;
    map['imageSize'] = imageSize;
    map['views'] = views;
    map['downloads'] = downloads;
    map['collections'] = collections;
    map['likes'] = likes;
    map['comments'] = comments;
    map['user_id'] = userId;
    map['user'] = user;
    map['userImageURL'] = userImageURL;
    return map;
  }
}
