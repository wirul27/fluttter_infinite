part of 'post_bloc.dart';

abstract class PostState extends Equatable {
  const PostState();

  @override
  List<Object> get props => [];
}

class PostInitial extends PostState {}

class PostFailure extends PostState {}

class PostSuccess extends PostState {
  final List<Object> posts;
  final bool max;

  PostSuccess({this.posts, this.max});

  PostSuccess copyWith({
    List<Post> posts,
    bool max,
  }) {
    return PostSuccess(
      posts: this.posts,
      max: this.max,
    );
  }

  @override
  List<Object> get props => [posts, max];
}
