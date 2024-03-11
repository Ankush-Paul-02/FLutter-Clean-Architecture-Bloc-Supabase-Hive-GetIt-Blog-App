part of 'blog_bloc.dart';

@immutable
sealed class BlogEvent {}

final class BlogUpload extends BlogEvent {
  final String title;
  final String content;
  final String posterId;
  final List<String> topics;
  final File image;

  BlogUpload({
    required this.title,
    required this.content,
    required this.posterId,
    required this.topics,
    required this.image,
  });
}

final class BlogFetchAllBlogs extends BlogEvent {}
