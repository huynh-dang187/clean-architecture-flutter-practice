import 'package:clean_mvvm_app/features/authentication/presentation/pages/login_page.dart';
import 'package:flutter/material.dart';

import 'package:flutter_bloc/flutter_bloc.dart';

import 'features/authentication/presentation/cubit/login_cubit.dart';
import 'features/authentication/domain/usecases/login_usecase.dart';
import 'features/authentication/data/repositories/auth_repository_impl.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(colorScheme: .fromSeed(seedColor: Colors.deepPurple)),
      home: BlocProvider(
        create: (_) => LoginCubit(LoginUsecase(AuthRepositoryImpl())),
        child: LoginPage(),
      ),
    );
  }
}
