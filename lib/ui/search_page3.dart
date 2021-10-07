import 'package:flutter/material.dart';
import 'package:image_search_app/model/image.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'package:pixabay_picker/pixabay_picker.dart';

class SearchPage3 extends StatefulWidget {
  const SearchPage3({Key key}) : super(key: key);

  @override
  _SearchPage3State createState() => _SearchPage3State();
}

class _SearchPage3State extends State<SearchPage3> {
  final _formKey = GlobalKey<FormState>();
  final _searchController = TextEditingController();
  String _keyword = '';

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
      body: Column(
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
                    onTap: () {
                      if (_formKey.currentState.validate()) {
                        fetchList(_searchController.text).then((value) {
                          setState(() {
                            _keyword = value.tags;
                          });
                        });
                      }
                    },
                  ),
                ],
              ),
            ),
          ),
          Container(
            child: Text(_keyword),
          )
        ],
      ),
    );
  }

  Future<PixabayImage> fetchList(String search) async {
    String url =
        "https://pixabay.com/api/?key=23724478-929bd40db53cfdb192d59041a&q={$search}&image_type=photo";
    final response = await http.get(url);
    print('=========================');
    Map<String, dynamic> jsonResponse = jsonDecode(response.body);
    PixabayImage pixabayImage = PixabayImage.fromJson(jsonResponse);

    print(pixabayImage);
    // Iterable jsonResponse = jsonDecode(response.body);
    // List<PixabayImage> list =
    //     jsonResponse.map((e) => PixabayImage.fromJson(e)).toList();
    // print(list);
    return pixabayImage;
  }

// Future<List<PixabayImage>> fetchList(String search) async {
//   String url =
//       "https://pixabay.com/api/?key=23724478-929bd40db53cfdb192d59041a&q={$search}&image_type=photo";
//   final response = await http.get(url);
//   print('=========================');
//   Map<String, dynamic> jsonResponse = jsonDecode(response.body);
//   PixabayImage pixabayImage = PixabayImage.fromJson(jsonResponse);
//
//   // Iterable jsonResponse = jsonDecode(response.body);
//   // List<PixabayImage> list =
//   //     jsonResponse.map((e) => PixabayImage.fromJson(e)).toList();
//   // print(list);
//   return list;
// }

}
