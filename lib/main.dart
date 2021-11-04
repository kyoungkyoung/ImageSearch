import 'package:flutter/material.dart';
import 'package:image_search_app/di/provider_setup.dart';
import 'package:image_search_app/presentation/main/search_page5.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    MultiProvider(
      providers: globalProviders,
      // [
      //   ChangeNotifierProvider(
      //     create: (_) => SearchPage5ViewModel(PixabayRepository(PixabayApi())),
      //   ),
      // ],
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const SearchPage5(),
    );
  }
}
