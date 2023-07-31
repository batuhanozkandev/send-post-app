import 'package:send_post_app/entities/person.dart';

class Peer extends Person {
  final bool? isLikedByMe;
  final bool? isFollowedByMe;

  Peer({
    super.name,
    super.uID,
    super.userName,
    super.email,
    super.followerCount,
    super.followingCount,
    super.likes,
    super.interestedInTopics,
    super.posts,
    super.avatarUrl,
    super.isBanned,
    this.isLikedByMe,
    this.isFollowedByMe,
  });
}
