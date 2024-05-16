import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:health_app/repositories/doctor_repository.dart';
import 'package:health_app/screens/home_screen.dart';
import 'package:health_app/state/home/home_bloc.dart';
import 'shared/theme/app_theme.dart';

void main() {
  final doctorRepository = DoctorRepository();
  runApp(MyApp(doctorRepository: doctorRepository));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key, required this.doctorRepository});
  final DoctorRepository doctorRepository;

  @override
  Widget build(BuildContext context) {
    return MultiRepositoryProvider(
      providers: [
        RepositoryProvider.value(value: doctorRepository),
        //Create other instances of repositories to make them available to the app.
      ],
      child: MultiBlocProvider(
        providers: [
          BlocProvider(
              create: (context) => HomeBloc(doctorRepository: doctorRepository)
                ..add(LoadHomeEvent())),
        ],
        child: MaterialApp(
          theme: const AppTheme().themeData,
          home: const HomeScreen(),
        ),
      ),
    );
  }
}
