import 'package:money_tracking/data/models/post.dart';
import 'package:money_tracking/data/services/posts_service.dart';

class PostRepository {

  final PostsService service;

  PostRepository(this.service);

  Future<List<Post>> fetchPosts(int page) async {
    final posts = await service.fetchPosts(page);
    return posts.map((e) => Post.fromJson(e)).toList();
  }
}
