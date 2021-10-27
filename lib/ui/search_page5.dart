import 'package:flutter/material.dart';
import 'package:image_search_app/data/pixabay_api.dart';
import 'package:image_search_app/model/image.dart';
import 'package:image_search_app/view_model/image_view_model.dart';

class SearchPage5 extends StatelessWidget {
  final _formKey = GlobalKey<FormState>();
  final _searchController = TextEditingController();
  final _searchControllerOnair = TextEditingController();
  final _api = PixabayApi();

  SearchPage5({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final viewModel = ImageViewModel.of(context).viewModel;

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
                        String query = _searchController.text;
                        viewModel.getFetchList(query);
                        await _api.fetchList(_searchController.text);
                      }
                    },
                  ),
                ],
              ),
            ),
          ),
          StreamBuilder<List<PixabayImage>>(
            stream: viewModel.pixabayApiStreamController,
            // initialData: viewModel.getFetchList('iphone'),
            builder: (context, AsyncSnapshot<List<PixabayImage>> snapshot) {
              if (!snapshot.hasData) {
                return const Center(child: Text(''));
              } else {
                return ListView(
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  children: snapshot.data!.map((pixabay) {
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
                );
              }
            },
          ),
        ],
      ),
    );
  }
}
