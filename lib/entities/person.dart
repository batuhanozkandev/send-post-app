import 'package:send_post_app/entities/post.dart';

class Person {
  final String? token;
  final String? uID;
  final String? name;
  final String? userName;
  final String? email;
  final String? avatarUrl;
  final int? followerCount;
  final int? followingCount;
  final int? likes;
  final List<String>? interestedInTopics;
  final List<Post>? posts;
  final bool? isBanned;

  Person({
    this.token = '',
    this.name = '',
    this.uID = '',
    this.userName = '',
    this.email = '',
    this.followerCount = 0,
    this.followingCount = 0,
    this.likes = 0,
    this.interestedInTopics = const [],
    this.posts = const [],
    this.avatarUrl = '',
    this.isBanned = false,
  });
}
