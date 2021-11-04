abstract class Result<T> {
  factory Result.success(T data) = Success; //success는 생성자, 이것을 Success에 구현한다.

  factory Result.error(Exception e) = Error;
}

class Success<T> implements Result<T> { // Result를 구현하고 data T를 담고있는 클래스
  final T data;

  Success(this.data);
}

class Error<T> implements Result<T> {
  final Exception e;

  Error(this.e);
}