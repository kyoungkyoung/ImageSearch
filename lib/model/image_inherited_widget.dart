import 'package:flutter/cupertino.dart';
import 'package:image_search_app/model/image.dart';

class ImageInheritedWidget extends InheritedWidget{
  final PixabayImage pixabayImage;

  const ImageInheritedWidget({
    Key? key,
    required this.pixabayImage,
    required Widget child,
  }) : super(key: key, child: child);

  static ImageInheritedWidget of(BuildContext context) {
    final ImageInheritedWidget? result = context.dependOnInheritedWidgetOfExactType<ImageInheritedWidget>();
    assert(result != null, 'No ImageInheritedWidget found in context');
    return result!;
  }

  @override
  bool updateShouldNotify(ImageInheritedWidget oldWidget) {
    return true;
  }
}