import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:rest_api_bloc_pattern/core/di/service_locator.dart';
import 'package:rest_api_bloc_pattern/core/router/app_router.dart';
import 'package:rest_api_bloc_pattern/features/users/presentation/bloc/user_bloc.dart';

void main() {
  // di
  setUpLocator();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        // User Bloc
        BlocProvider(create: (context) => getIt<UserBloc>()),
      ],
      child: MaterialApp.router(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        routerConfig: appRouter,
      ),
    );
  }
}
