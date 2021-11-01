import 'package:flutter/material.dart';
import 'package:image_search_app/presentation/search_page5_view_model.dart';
import 'package:provider/provider.dart';

class SearchPage5 extends StatelessWidget {
  final _formKey = GlobalKey<FormState>();
  final _searchController = TextEditingController();
  String query = 'iphone';
  SearchPage5({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final viewModel = context.watch<SearchPage5ViewModel>();
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
                        query = _searchController.text;
                        viewModel.getFetchList(query);
                      }
                    },
                  ),
                ],
              ),
            ),
          ),
          ListView(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            children: viewModel.getList().map((pixabay) {
              return Column(
                children: [
                  Image.network(
                    pixabay.webformatURL,
                    // fit: BoxFit.fill,
                    width: 100,
                  ),
                  Text(pixabay.tags),
                  const SizedBox(
                    height: 20,
                  )
                ],
              );
            }).toList(),
          ),
        ],
      ),
    );
  }
}
