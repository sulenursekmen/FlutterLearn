import 'dart:io';

import 'package:demos/flutter_202/service/comment_learn.dart';
import 'package:demos/flutter_202/service/post_model.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

class ServicePostLearn extends StatefulWidget {
  const ServicePostLearn({super.key});

  @override
  State<ServicePostLearn> createState() => _ServicePostLearnState();
}

class _ServicePostLearnState extends State<ServicePostLearn> {
  String? name;
  bool _isLoading = false;
  late final Dio _networkManager;
  final _baseUrl = 'https://jsonplaceholder.typicode.com/';

  final TextEditingController _titleController = TextEditingController();
  final TextEditingController _bodyController = TextEditingController();
  final TextEditingController _userIdController = TextEditingController();

  @override
  void initState() {
    super.initState();
    _networkManager = Dio(BaseOptions(baseUrl: _baseUrl));
  }

  void _changeLoading() {
    setState(() {
      _isLoading = !_isLoading;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          _isLoading
              ? const CircularProgressIndicator.adaptive()
              : const SizedBox.shrink()
        ],
        title: Text(name ?? ''),
      ),
      body: Column(
        children: [
          TextField(
              keyboardType: TextInputType.text,
              textInputAction: TextInputAction.next,
              controller: _titleController,
              decoration: InputDecoration(labelText: 'Title')),
          TextField(
              keyboardType: TextInputType.text,
              textInputAction: TextInputAction.next,
              controller: _bodyController,
              decoration: InputDecoration(labelText: 'Body')),
          TextField(
              textInputAction: TextInputAction.done,
              controller: _userIdController,
              keyboardType: TextInputType.number,
              // autofillHints: [AutofillHints.creditCardNumber],
              decoration: InputDecoration(labelText: 'UserId')),
          TextButton(
              onPressed: _isLoading
                  ? null
                  : () {
                      if (_titleController.text.isNotEmpty &&
                          _bodyController.text.isNotEmpty &&
                          _userIdController.text.isNotEmpty) {
                        final model = PostModel(
                            body: _bodyController.text,
                            title: _titleController.text,
                            userId: int.tryParse(_userIdController.text));
                        //  _addItemToService(model);
                      }
                    },
              child: const Text('Send'))
        ],
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
    return Card(
      color: Colors.lime,
      margin: EdgeInsets.only(bottom: 20),
      child: ListTile(
        onTap: () {
          Navigator.of(context).push(MaterialPageRoute(
            builder: (context) => CommentLearn(postId: _model?.id),
          ));
        },
        title: Text(_model?.title ?? ''),
        subtitle: Text(_model?.body ?? ''),
      ),
    );
  }
}
