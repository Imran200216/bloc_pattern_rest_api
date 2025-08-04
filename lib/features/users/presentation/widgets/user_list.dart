import 'package:flutter/material.dart';

class UserList extends StatelessWidget {
  final String userName;
  final String userImage;
  final int age;

  const UserList({
    super.key,
    required this.userName,
    required this.userImage,
    required this.age,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: CircleAvatar(backgroundImage: NetworkImage(userImage)),
      title: Text(userName),
      subtitle: Text(age.toString()),
    );
  }
}
