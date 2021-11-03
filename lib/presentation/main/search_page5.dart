import 'package:flutter/material.dart';
import 'package:image_search_app/domain/model/pixabay_image.dart';
import 'package:image_search_app/presentation/main/search_page5_view_model.dart';
import 'package:provider/provider.dart';

class SearchPage5 extends StatefulWidget {
  const SearchPage5({Key? key}) : super(key: key);

  @override
  State<SearchPage5> createState() => _SearchPage5State();
}

class _SearchPage5State extends State<SearchPage5> {
  final _formKey = GlobalKey<FormState>();
  final _searchController = TextEditingController();

  @override
  void initState() {
    Future.microtask(
        () => context.read<SearchPage5ViewModel>().getFetchList('iphone'));
    super.initState();
  }

  @override
  void dispose() {
    _searchController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final viewModel = context.watch<SearchPage5ViewModel>();
    final state = viewModel.state;
    List<PixabayImage> pixabayImage = state.pixabayImageList;

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
                        viewModel.getFetchList(_searchController.text);
                      }
                    },
                  ),
                ],
              ),
            ),
          ),
          state.isLoading
              ? const Center(
                  child: CircularProgressIndicator(),
                )
              : ListView(
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  children: pixabayImage.map((pixabay) {
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
