// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pixabay_image_state.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_PixabayImageState _$$_PixabayImageStateFromJson(Map<String, dynamic> json) =>
    _$_PixabayImageState(
      pixabayImageList: (json['pixabayImageList'] as List<dynamic>?)
              ?.map((e) => PixabayImage.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
      isLoading: json['isLoading'] as bool? ?? false,
    );

Map<String, dynamic> _$$_PixabayImageStateToJson(
        _$_PixabayImageState instance) =>
    <String, dynamic>{
      'pixabayImageList': instance.pixabayImageList,
      'isLoading': instance.isLoading,
    };
