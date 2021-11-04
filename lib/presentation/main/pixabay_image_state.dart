import 'package:image_search_app/domain/model/pixabay_image.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'pixabay_image_state.freezed.dart';

part 'pixabay_image_state.g.dart';

@freezed
class PixabayImageState with _$PixabayImageState {
  factory PixabayImageState(
      {@Default([]) List<PixabayImage> pixabayImageList,
      @Default(false) bool isLoading}) = _PixabayImageState;

  factory PixabayImageState.fromJson(Map<String, dynamic> json) =>
      _$PixabayImageStateFromJson(json);
}
