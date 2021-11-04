import 'package:image_search_app/data/data_source/pixabay_api.dart';
import 'package:image_search_app/data/data_source/pixabay_dio_api.dart';
import 'package:image_search_app/data/repository/pixabay_repository.dart';
import 'package:image_search_app/domain/repository/image_repository.dart';
import 'package:image_search_app/presentation/main/search_page5_view_model.dart';
import 'package:provider/provider.dart';
import 'package:provider/single_child_widget.dart';

// 1. Provider 전체
List<SingleChildWidget> globalProviders = [
  ...independentModels,
  ...dependentModels,
  ...viewModels,
];

// 2. 다른 클래스에 의존하지 않는 Model
List<SingleChildWidget> independentModels = [
  Provider<PixabayApi>(
    create: (context) => PixabayApi(),
  ),
  Provider<PixabayDioApi>(
    create: (context) => PixabayDioApi(),
  ),
];

// 3. 2에 등록한 클래스에 의존하는 Model
List<SingleChildWidget> dependentModels = [
  //<ProxyProvider에서 만들 객체가 필요한 의존성 type, 만들어지는애 type>
  ProxyProvider<PixabayApi, ImageRepository>(
    update: (context, api, _) => PixabayRepository(api),
  ),
  // ProxyProvider<PixabayDioApi, ImageRepository>(
  //   update: (context, api, _) => PixabayRepository(api),
  // ),
];

// 4. ViewModels ; View가 사용, 2와 3에 등록한 클래스를 사용할 수 있음
List<SingleChildWidget> viewModels = [
  ChangeNotifierProvider<SearchPage5ViewModel>(
    create: (context) => SearchPage5ViewModel(
      context.read<PixabayRepository>(),
      // Provider.of<PixabayRepository>(context, listen: false),
    ),
  ),
];
