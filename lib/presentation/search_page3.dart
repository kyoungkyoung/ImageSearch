import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:image_search_app/model/image.dart';

class SearchPage3 extends StatefulWidget {
  const SearchPage3({Key? key}) : super(key: key);

  @override
  _SearchPage3State createState() => _SearchPage3State();
}

class _SearchPage3State extends State<SearchPage3> {
  final _formKey = GlobalKey<FormState>();
  final _searchController = TextEditingController();
  final _searchControllerOnair = TextEditingController();
  List<PixabayImage> _list = [];
  String _query = '';

  @override
  void dispose() {
    _searchController.dispose();
    _searchControllerOnair.dispose();
    super.dispose();
  }

  @override
  void initState() {
    super.initState();
    init();
  }

  init() async {
    List<PixabayImage> image = await fetchList('iphone');
    setState(() {
      _list = image;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Image Search'),
      ),
      body: ListView(
        children: [
          Container(
            padding: const EdgeInsets.all(16.0),
            child: Form(
              key: _formKey,
              child: Row(
                children: [
                  SizedBox(
                    width: 300,
                    child: TextFormField(
                      decoration: const InputDecoration(
                        border: OutlineInputBorder(),
                        hintText: 'search',
                      ),
                      controller: _searchController,
                      validator: (String? value) {
                        if (value!.trim().isEmpty) {
                          return '검색어를 입력하세요';
                        }
                        return null;
                      },
                    ),
                  ),
                  const SizedBox(
                    width: 2,
                  ),
                  InkWell(
                    child: const Icon(
                      Icons.search,
                      size: 50,
                    ),
                    onTap: () async {
                      if (_formKey.currentState!.validate()) {
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
          TextField(
            // controller: _searchControllerOnair, onChanged에서 값이 변하면 _query에 값을 입력해주기 때문에 여기서 controller 필요없다
            onChanged: (query) {
              setState(() {
                _query = query;
              });
            },
          ),
          const SizedBox(
            width: 2,
          ),
          ListView(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            children: [
              ..._list
                  .where((e) => e.tags
                      .toLowerCase()
                      .contains(_query.trim().toLowerCase()))
                  .map((e) {
                return Column(children: [
                  Image.network(
                    e.webformatURL,
                    // fit: BoxFit.fill,
                    width: 100,
                  ),
                  Text(e.tags),
                  const SizedBox(
                    height: 20,
                  )
                ]);
              }),
            ],
          )
        ],
      ),
    );
  }

  Future<List<PixabayImage>> fetchList(String search) async {
    String url =
        "https://pixabay.com/api/?key=23724478-929bd40db53cfdb192d59041a&q={$search}&image_type=photo";
    final response = await http.get(Uri.parse(url));

    Iterable jsonResponse = jsonDecode(response.body)['hits'];
    List<PixabayImage> list =
        jsonResponse.map((e) => PixabayImage.fromJson(e)).toList();

    return list;
  }
}
