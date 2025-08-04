import 'package:flutter/material.dart';
import 'package:rest_api_bloc_pattern/features/users/domain/entities/user_entities.dart';

class UserDescriptionScreen extends StatelessWidget {
  final UserEntities user;

  const UserDescriptionScreen({super.key, required this.user});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('User Description')),
      body: Column(
        spacing: 20,
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Text(user.userName ?? "UserName"),

          Text(user.address.address ?? "User Address"),
        ],
      ),
    );
  }
}
