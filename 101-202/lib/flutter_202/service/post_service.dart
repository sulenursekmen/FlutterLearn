import 'dart:io';

import 'package:demos/flutter_202/service/comment_model.dart';
import 'package:demos/flutter_202/service/post_model.dart';
import 'package:dio/dio.dart';

abstract class IPostService {
  Future<bool> addItemToService(PostModel postModel);
  Future<List<PostModel>?> fetchPostItemsAdvance();
  Future<bool> putItemToService(PostModel postModel, int id);
  Future<bool> deleteItemToService(int id);
  Future<List<CommentModel>?> fetchRelatedCommentsWithPostId(int postId);
}

class PostService implements IPostService {
  final Dio _networkManager;
  PostService()
      : _networkManager =
            Dio(BaseOptions(baseUrl: 'https://jsonplaceholder.typicode.com/'));

//post
  @override
  Future<bool> addItemToService(PostModel postModel) async {
    final response = await _networkManager.post(_PostServicePaths.posts.name,
        data: postModel);
    return response.statusCode == HttpStatus.created;
  }

//get
  @override
  Future<List<PostModel>?> fetchPostItemsAdvance() async {
    try {
      final response = await _networkManager.get(_PostServicePaths.posts.name);
      if (response.statusCode == HttpStatus.ok) {
        final _datas = response.data;
        if (_datas is List) {
          return _datas.map((e) => PostModel.fromJson(e)).toList();
        }
      }
    } catch (e) {
      return null;
    }
  }

//9/1:30
//put
  @override
  Future<bool> putItemToService(PostModel postModel, int id) async {
    final response = await _networkManager
        .put('${_PostServicePaths.posts.name}/$id', data: postModel);
    return response.statusCode == HttpStatus.ok;
  }

//delete
  @override
  Future<bool> deleteItemToService(int id) async {
    final response =
        await _networkManager.delete('${_PostServicePaths.posts.name}/$id');
    return response.statusCode == HttpStatus.ok;
  }

  //Comment
  @override
  Future<List<CommentModel>?> fetchRelatedCommentsWithPostId(int postId) async {
    try {
      final response = await _networkManager.get(
          _PostServicePaths.comments.name,
          queryParameters: {_PostQueryPaths.postId.name: postId});
      if (response.statusCode == HttpStatus.ok) {
        final _datas = response.data;
        if (_datas is List) {
          return _datas.map((e) => CommentModel.fromJson(e)).toList();
        }
      }
    } catch (e) {
      return null;
    }
    return null;
  }
}

enum _PostServicePaths { posts, comments }

enum _PostQueryPaths { postId }
