import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:wifi_bloc/app/presentation/bloc/wifi/wifi_bloc.dart';
import 'package:wifi_bloc/app/presentation/views/home/home_view.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<WifiBloc>(
            create: (context) => WifiBloc()
        )
      ],
      child: const MaterialApp(
        home: HomeView(),
      ),
    );
  }
}
