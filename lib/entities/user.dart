import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:send_post_app/entities/notification.dart';
import 'package:send_post_app/entities/person.dart';

class User extends Person {
  final List<Notification>? notifications;

  User({
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
    this.notifications,
  });

  factory User.fromFirestore(
    DocumentSnapshot<Map<String, dynamic>> snapshot,
  ) {
    final data = snapshot.data();
    return User(
      name: data?['name'],
      uID: data?['uID'],
      userName: data?['userName'],
      email: data?['email'],
      followerCount: data?['followerCount'],
      followingCount: data?['followingCount'],
      likes: data?['likes'],
      interestedInTopics: data?['interestedInTopics'] is Iterable
          ? List.from(data?['interestedInTopics'])
          : null,
      posts: data?['posts'] is Iterable ? List.from(data?['posts']) : null,
      avatarUrl: data?['avatarUrl'],
      isBanned: data?['isBanned'],
      notifications: data?['notifications'] is Iterable
          ? List.from(data?['notifications'])
          : null,
    );
  }
}
