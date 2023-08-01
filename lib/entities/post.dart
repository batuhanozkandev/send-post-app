import 'package:send_post_app/entities/person.dart';

class Post {
  final int? id;
  final int? ownerId;
  final String? type;
  final String? title;
  final String? body;
  final List<String>? images;
  final Person? owner;
  final int? seenCount;
  final int? likeCount;
  final int? commentCount;
  final bool? isLikedByMe;
  final bool? isCommentedByMe;
  final bool? isSeenByMe;
  final List<Person>? commentedByPeers;
  final List<Person>? likedByPeers;
  final DateTime? shareTime;
  final bool? isPopular;
  final bool? isTrending;
  final bool? isFollowed;

  Post({
    this.title,
    this.ownerId,
    this.type,
    this.body,
    this.images,
    this.seenCount,
    this.likeCount,
    this.commentCount,
    this.isLikedByMe,
    this.isCommentedByMe,
    this.commentedByPeers,
    this.likedByPeers,
    this.id,
    this.shareTime,
    this.isSeenByMe,
    this.owner,
    this.isPopular,
    this.isTrending,
    this.isFollowed,
  });
}
