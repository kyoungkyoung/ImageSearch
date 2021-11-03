abstract class UiEvent {
 factory UiEvent.showSnackBar(String message) = ShowSnackBar;
}

class ShowSnackBar implements UiEvent {
  String message;

  ShowSnackBar(this.message);
}