import 'package:flutter/material.dart';

class UserList extends StatelessWidget {
  final VoidCallback onTap;
  final String userName;
  final String userImage;
  final int age;

  const UserList({
    super.key,
    required this.userName,
    required this.userImage,
    required this.age,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: () {
        onTap();
      },
      leading: CircleAvatar(backgroundImage: NetworkImage(userImage)),
      title: Text(userName),
      subtitle: Text(age.toString()),
    );
  }
}
