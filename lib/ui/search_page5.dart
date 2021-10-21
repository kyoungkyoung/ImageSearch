import 'package:flutter/material.dart';
import 'package:image_search_app/data/pixabay_api.dart';
import 'package:image_search_app/model/image.dart';
import 'package:image_search_app/view_model/image_view_model.dart';


class SearchPage5 extends StatelessWidget {
  final _formKey = GlobalKey<FormState>();
  final _searchController = TextEditingController();
  final _searchControllerOnair = TextEditingController();
  List<PixabayImage> _list = [];
  String _query = '';
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
                        if (_list.isNotEmpty) {
                          List<PixabayImage> image = viewModel.getFetchList(_query);
                          await _api.fetchList(_searchController.text);
                          // setState(() {
                          //   _list = image;
                          // });
                        }
                      }
                    },
                  ),
                ],
              ),
            ),
          ),

          StreamBuilder(
              initialData: 'iphone',
              stream: viewModel.
              builder: (context, snapshot) {
            return Text('');
          })





          TextField(
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
}
