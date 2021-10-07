import 'package:flutter/material.dart';
import 'package:image_search_app/model/image.dart';
import 'package:http/http.dart' as http;
import 'package:pixabay_picker/pixabay_api.dart';
import 'dart:convert';

class SearchPage3 extends StatefulWidget {
  const SearchPage3({Key key}) : super(key: key);

  @override
  _SearchPage3State createState() => _SearchPage3State();
}

class _SearchPage3State extends State<SearchPage3> {
  final _formKey = GlobalKey<FormState>();
  final _searchController = TextEditingController();
  String _keyword = 'laptop, workspace, desk';
  String _imageUrl =
      'https://pixabay.com/get/gcefbd8692c8d2396664e1a4b8dbe6eef8de417828639865846e1c4503d8b0deac81a791604ad00b277d11c5dd0b0ee3c_640.jpg';
  var _list = '';

  @override
  void dispose() {
    _searchController.dispose();
    super.dispose();
  }

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Image Search'),
      ),
      body: ListView(
        children: [
          Container(
            padding: EdgeInsets.all(16.0),
            child: Form(
              key: _formKey,
              child: Row(
                children: [
                  Container(
                    width: 300,
                    child: TextFormField(
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        hintText: 'search',
                      ),
                      controller: _searchController,
                      validator: (value) {
                        if (value.trim().isEmpty) {
                          return '검색어를 입력하세요';
                        }
                        return null;
                      },
                    ),
                  ),
                  SizedBox(
                    width: 2,
                  ),
                  InkWell(
                    child: Icon(
                      Icons.search,
                      size: 50,
                    ),
                    onTap: () async {
                      if (_formKey.currentState.validate()) {
                        // PixabayMediaProvider api =
                        // PixabayMediaProvider(apiKey: _apiKey, language: "hu");

                        List<PixabayImage> image =
                            await fetchList(_searchController.text);
                        // List<PixabayImage> image =
                        //     await fetchList2(_searchController.text);
                        setState(() {
                          _list = image.toString();
                          // _keyword = image.tags;
                          // _imageUrl = image.webformatURL;
                        });
                      }
                    },
                  ),
                ],
              ),
            ),
          ),
          Container(
            child: Column(
              children: [
                // Image.network(
                //   _imageUrl,
                //   width: 200,
                // ),
                // Text(_keyword),
                Text(_list),
              ],
            ),
          )
        ],
      ),
    );
  }

  Future<List<PixabayImage>> fetchList(String search) async {
    String url =
        "https://pixabay.com/api/?key=23724478-929bd40db53cfdb192d59041a&q={$search}&image_type=photo";
    final response = await http.get(url);
    var aa = jsonDecode(response.body);
    print("-------------------");
    print(aa['hits']);
    var bb = jsonEncode(aa['hits']);

    // Map<String, dynamic> jsonResponse = jsonDecode(aa['hits']);
    // PixabayImage pixabayImage = PixabayImage.fromJson(jsonResponse);
    Iterable jsonResponse = jsonDecode(bb);
    List<PixabayImage> list =
        jsonResponse.map((e) => PixabayImage.fromJson(e)).toList();

    // PixabayImage pixabayImage = json2.fromJson(jsonResponse);
    print("sdafsdfasdfasdfasfasf");
    // print(pixabayImage);
    // Iterable jsonResponse = jsonDecode(response.body);
    // List<PixabayImage> list =
    //     jsonResponse.map((e) => PixabayImage.fromJson(e)).toList();
    print(list);
    return list;
  }

//
// fetchList2(String search) async {
//   String url =
//       "https://pixabay.com/api/?key=23724478-929bd40db53cfdb192d59041a&q={$search}&image_type=photo";
//   final response = await http.get(url);
//   // Map<String, dynamic> jsonResponse = jsonDecode(response.body);
//   // PixabayImage pixabayImage = PixabayImage.fromJson(jsonResponse);
//
//   // print(pixabayImage);
//   var jsonResponse = jsonDecode(response.body);
//   List<PixabayImage> pixabayImage =
//       jsonResponse.map((e) => PixabayImage.fromJson(e)).toList();
//   print(pixabayImage);
//   return pixabayImage;
// }
}
