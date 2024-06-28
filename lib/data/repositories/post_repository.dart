import 'package:money_tracking/data/models/post.dart';
import 'package:money_tracking/data/services/posts_service.dart';

class PostRepository {

  final PostsService service;

  PostRepository(this.service);

  // Future<List<Post>>fetchPosts(int page) async {
  //   service.fetchPosts(page);
  // }
}
