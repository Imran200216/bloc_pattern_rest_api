import 'package:go_router/go_router.dart';
import 'package:rest_api_bloc_pattern/features/users/domain/entities/user_entities.dart';
import 'package:rest_api_bloc_pattern/features/users/presentation/screens/user_description_screen.dart';
import 'package:rest_api_bloc_pattern/features/users/presentation/screens/user_screen.dart';

final GoRouter appRouter = GoRouter(
  initialLocation: "/user",

  routes: [
    // User Screen
    GoRoute(
      path: '/user',
      builder: (context, state) => UserScreen(),
      name: "user",
    ),

    // User Description Screen
    GoRoute(
      path: '/userDescription',
      name: 'userDescription',
      builder: (context, state) {
        final user = state.extra as UserEntities;
        return UserDescriptionScreen(user: user);
      },
    ),
  ],
);
