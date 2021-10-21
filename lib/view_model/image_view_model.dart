import 'package:flutter/material.dart';
import 'package:image_search_app/view_model/stream_view_model.dart';

class ImageViewModel extends InheritedWidget{
  final StreamViewModel viewModel;

  const ImageViewModel({
    Key? key,
    required this.viewModel,
    required Widget child,
  }) : super(key: key, child: child);

  static ImageViewModel of(BuildContext context) {
    final ImageViewModel? result = context.dependOnInheritedWidgetOfExactType<ImageViewModel>();
    assert(result != null, 'No ImageViewModel found in context');
    return result!;
  }



  @override
  bool updateShouldNotify(ImageViewModel oldWidget) {
    return true;
  }

}