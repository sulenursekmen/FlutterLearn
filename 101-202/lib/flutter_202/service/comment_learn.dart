// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:demos/flutter_202/service/comment_model.dart';
import 'package:flutter/material.dart';

import 'package:demos/flutter_202/service/post_service.dart';

class CommentLearn extends StatefulWidget {
  const CommentLearn({
    Key? key,
    required this.postId,
  }) : super(key: key);
  final int? postId;

  @override
  State<CommentLearn> createState() => _CommentLearnState();
}

class _CommentLearnState extends State<CommentLearn> {
  late final IPostService postService;
  bool _isLoading = false;
  List<CommentModel>? _commentsItem;
  @override
  void initState() {
    super.initState();
    postService = PostService();
    fetchItemsWithId(widget.postId ?? 0);
  }

  void _changeLoading() {
    setState(() {
      _isLoading = !_isLoading;
    });
  }

  Future<void> fetchItemsWithId(int postId) async {
    _changeLoading();
    _commentsItem = await postService.fetchRelatedCommentsWithPostId(postId);
    _changeLoading();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(actions: [
        _isLoading ? CircularProgressIndicator.adaptive() : SizedBox.shrink()
      ]),
      body: ListView.builder(
        itemCount: _commentsItem?.length ?? 0,
        itemBuilder: (context, int index) {
          return Card(
            child: Text(_commentsItem?[index].email ?? ''),
          );
        },
      ),
    );
  }
}
