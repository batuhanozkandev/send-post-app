import 'package:send_post_app/models/person.dart';

class Peer extends Person {
  final bool? isLikedByMe;
  final bool? isFollowedByMe;

  Peer(
    super.name,
    super.uID,
    super.userName,
    super.email,
    super.password,
    super.followerCount,
    super.followingCount,
    super.likes,
    super.interestedInTopics,
    super.posts,
    super.avatarURL,
    super.isBanned,
    this.isLikedByMe,
    this.isFollowedByMe,
  );
}
