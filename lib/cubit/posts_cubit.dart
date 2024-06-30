import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:money_tracking/data/models/post.dart';
import 'package:money_tracking/data/repositories/post_repository.dart';

part 'posts_state.dart';

class PostsCubit extends Cubit<PostsState> {
  PostsCubit(this.repository) : super(PostsInitial());

  int page = 1;
  final PostRepository repository;

  void loadPosts() {
    if (state is PostsLoading) return;

    final currentState = state;

    var oldPosts = <Post>[];
    if (currentState is PostsLoaded) {
      oldPosts = currentState.posts;
    }
    emit(PostsLoading(oldPosts, isFirstFetch: page == 1));

    repository.fetchPosts(page);
  }
}
