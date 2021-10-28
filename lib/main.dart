import 'package:flutter/material.dart';
import 'package:image_search_app/data/pixabay_api.dart';
import 'package:image_search_app/ui/search_page5.dart';
import 'package:image_search_app/view_model/image_view_model.dart';
import 'package:image_search_app/view_model/search_page5_view_model.dart';
import 'package:image_search_app/view_model/stream_view_model.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: ChangeNotifierProvider(
        create: (_) => SearchPage5ViewModel(PixabayApi()),
        child: SearchPage5(),
      ),
    );
  }
}
