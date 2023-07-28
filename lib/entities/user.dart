import 'package:send_post_app/entities/notification.dart';
import 'package:send_post_app/entities/person.dart';

class User extends Person {
  final List<Notification>? notifications;

  User({
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
    super.avatarUrl,
    super.isBanned,
    this.notifications,
  });
}
