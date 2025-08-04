import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:rest_api_bloc_pattern/features/users/presentation/bloc/user_bloc.dart';
import 'package:rest_api_bloc_pattern/features/users/presentation/widgets/user_list.dart';

class UserScreen extends StatefulWidget {
  const UserScreen({super.key});

  @override
  State<UserScreen> createState() => _UserScreenState();
}

class _UserScreenState extends State<UserScreen> {
  @override
  void initState() {
    super.initState();
    context.read<UserBloc>().add(UserFetchEvent());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Users')),
      body: BlocBuilder<UserBloc, UserState>(
        builder: (context, state) {
          if (state is UserLoadingState) {
            return const Center(child: CircularProgressIndicator());
          } else if (state is UserLoadedSuccessState) {
            final users = state.users;

            return ListView.builder(
              itemCount: users.length,
              itemBuilder: (_, index) {
                final user = users[index];
                return UserList(
                  onTap: () {
                    GoRouter.of(
                      context,
                    ).pushNamed('userDescription', extra: user);
                  },

                  userName: user.firstName ?? "No First Name",
                  userImage: user.image ?? "No Image",
                  age: user.age ?? 0,
                );
              },
            );
          } else if (state is UserLoadedFailureState) {
            return Center(child: Text('Error: ${state.errorMessage}'));
          } else {
            return const Center(child: Text('No data yet'));
          }
        },
      ),
    );
  }
}
