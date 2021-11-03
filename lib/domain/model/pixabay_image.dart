import 'package:json_annotation/json_annotation.dart';
part 'pixabay_image.g.dart';

@JsonSerializable()
class PixabayImage {
  String tags;
  String webformatURL;
  PixabayImage(this.tags, this.webformatURL);

  factory PixabayImage.fromJson(Map<String, dynamic> json) => _$PixabayImageFromJson(json);

  Map<String, dynamic> toJson() => _$PixabayImageToJson(this);
}