import 'package:send_post_app/models/post.dart';

class Person {
  final String? uID;
  final String? name;
  final String? userName;
  final String? email;
  final String? password;
  final String? avatarUrl;
  final int? followerCount;
  final int? followingCount;
  final int? likes;
  final List<String>? interestedInTopics;
  final List<Post>? posts;
  final bool? isBanned;

  Person(
    this.name,
    this.uID,
    this.userName,
    this.email,
    this.password,
    this.followerCount,
    this.followingCount,
    this.likes,
    this.interestedInTopics,
    this.posts,
    this.avatarUrl,
    this.isBanned,
  );
}
