import 'package:freezed_annotation/freezed_annotation.dart';
part 'result.freezed.dart';

@freezed
abstract class Result<T> with _$Result<T> {
  const factory Result.success(T data) = Success; //success는 생성자, 이것을 Success에 구현한다.

  const factory Result.error(Exception e) = Error;

  const factory Result.loading(bool isLoading) = Loading;
}
