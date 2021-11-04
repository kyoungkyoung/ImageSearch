abstract class UiEvent {
 factory UiEvent.showSnackBar(String message) = ShowSnackBar;
 factory UiEvent.endLoading() = EndLoading;
}

class ShowSnackBar implements UiEvent {
  String message;

  ShowSnackBar(this.message);
}

class EndLoading implements UiEvent {
  // print('네트워크 통신 완료');
  // EndLoading();
}