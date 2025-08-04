import 'package:flutter/material.dart';
import 'package:rest_api_bloc_pattern/features/users/presentation/widgets/user_list.dart';

class UserScreen extends StatefulWidget {
  const UserScreen({super.key});

  @override
  State<UserScreen> createState() => _UserScreenState();
}

class _UserScreenState extends State<UserScreen> {
  @override
  Widget build(BuildContext context) {
    final String userImage =
        "https://images.unsplash.com/photo-1746469550626-516cb3fd42da?q=80&w=687&auto=format&fit=crop&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D";

    return Scaffold(
      appBar: AppBar(centerTitle: true, title: Text("Users")),
      body: ListView.builder(
        scrollDirection: Axis.vertical,
        physics: const BouncingScrollPhysics(),
        itemCount: 30,
        itemBuilder: (context, index) {
          return UserList(userName: "Imran", userImage: userImage, age: 30);
        },
      ),
    );
  }
}
