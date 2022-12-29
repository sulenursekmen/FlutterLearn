import 'dart:io';

import 'package:demos/flutter_202/service/comment_learn.dart';
import 'package:demos/flutter_202/service/post_model.dart';
import 'package:demos/flutter_202/service/post_service.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

class ServiceLearn extends StatefulWidget {
  const ServiceLearn({super.key});

  @override
  State<ServiceLearn> createState() => _ServiceLearnState();
}

class _ServiceLearnState extends State<ServiceLearn> {
  List<PostModel>? _items;
  String? name;
  bool _isLoading = false;
  late final Dio _networkManager;
  final _baseUrl = 'https://jsonplaceholder.typicode.com/';
//TEST Edilebilir kod
  late final IPostService _postService;

  @override
  void initState() {
    super.initState();
    _networkManager = Dio(BaseOptions(baseUrl: _baseUrl));
    _postService = PostService();

    name = 'sule';
    fetchPostItemsAdvance();
    fetchPostItems();
  }

  void _changeLoading() {
    setState(() {
      _isLoading = !_isLoading;
    });
  }

  Future<void> fetchPostItems() async {
    _changeLoading();
    final response =
        await Dio().get('https://jsonplaceholder.typicode.com/posts');
    if (response.statusCode == HttpStatus.ok) {
      final _datas = response.data;
      if (_datas is List) {
        setState(() {
          _items = _datas.map((e) => PostModel.fromJson(e)).toList();
        });
      }
    }
    _changeLoading();
  }

  Future<void> fetchPostItemsAdvance() async {
    _changeLoading();
    _items = await _postService.fetchPostItemsAdvance();
    _changeLoading();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          _isLoading ? CircularProgressIndicator.adaptive() : SizedBox.shrink()
        ],
        title: Text(name ?? ''),
      ),
      body: ListView.builder(
        padding: EdgeInsets.symmetric(horizontal: 20),
        itemCount: _items?.length ?? 0,
        itemBuilder: (context, index) {
          return _PostCard(model: _items?[index]);
        },
      ),
    );
  }
}

class _PostCard extends StatelessWidget {
  const _PostCard({
    Key? key,
    required PostModel? model,
  })  : _model = model,
        super(key: key);

  final PostModel? _model;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.of(context).push(MaterialPageRoute(
          builder: (context) => CommentLearn(postId: _model?.id),
        ));
      },
      child: Card(
        color: Colors.lime,
        margin: EdgeInsets.only(bottom: 20),
        child: ListTile(
          title: Text(_model?.title ?? ''),
          subtitle: Text(_model?.body ?? ''),
        ),
      ),
    );
  }
}

// void getHttp() async {
//   try {
//     var response =
//         await Dio().get('https://jsonplaceholder.typicode.com/posts');
//     print(response);
//   } catch (e) {
//     print(e);
//   }
// }
