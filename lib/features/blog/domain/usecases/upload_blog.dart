import 'dart:io';

import 'package:fpdart/fpdart.dart';

import '../../../../core/error/failure.dart';
import '../../../../core/usecase/usecase.dart';
import '../entities/blog.dart';
import '../repositories/blog_repository.dart';

class UploadBlog implements UseCase<Blog, UploadBlogParam> {
  final BlogRepository blogRepository;

  UploadBlog(this.blogRepository);

  @override
  Future<Either<Failure, Blog>> call(UploadBlogParam params) async {
    return await blogRepository.uploadBlog(
      image: params.image,
      title: params.title,
      description: params.content,
      posterId: params.posterId,
      topics: params.topics,
    );
  }
}

class UploadBlogParam {
  final String title;
  final String content;
  final String posterId;
  final List<String> topics;
  final File image;

  UploadBlogParam({
    required this.title,
    required this.content,
    required this.posterId,
    required this.topics,
    required this.image,
  });
}
