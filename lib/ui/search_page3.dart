import 'package:flutter/material.dart';
import 'package:image_search_app/model/image.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class SearchPage3 extends StatefulWidget {
  const SearchPage3({Key key}) : super(key: key);

  @override
  _SearchPage3State createState() => _SearchPage3State();
}

class _SearchPage3State extends State<SearchPage3> {
  final _formKey = GlobalKey<FormState>();
  final _searchController = TextEditingController();
  List<PixabayImage> _list = [];

  @override
  void dispose() {
    _searchController.dispose();
    super.dispose();
  }

  @override
  void initState() {
    super.initState();
    init();
  }

  init() async{
    List<PixabayImage> image =
    await fetchList('iphone');
    setState(() {
      _list = image;
    });
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
                        if (_list.isNotEmpty) {
                          List<PixabayImage> image =
                              await fetchList(_searchController.text);
                          setState(() {
                            _list = image;
                          });
                        }
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
                ListView(
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  children: [
                    ..._list.map((e) {
                      return Column(children: [
                        Image.network(
                          e.webformatURL,
                          width: 100,
                        ),
                        Text(e.tags),
                        SizedBox(
                          height: 20,
                        )
                      ]);
                    }),
                  ],
                ),
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
    print(aa['hits']);
    var bb = jsonEncode(aa['hits']);

    Iterable jsonResponse = jsonDecode(bb);
    List<PixabayImage> list =
        jsonResponse.map((e) => PixabayImage.fromJson(e)).toList();

    return list;
  }
}
