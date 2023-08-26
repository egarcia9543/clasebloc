import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:wifi_bloc/app/presentation/bloc/wifi/wifi_bloc.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: BlocBuilder<WifiBloc, WifiState>(
            builder: (context, state) {
              if (state is WifiConnectedState) {
                return const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Está conectado"),
                    Icon(Icons.wifi, color: Colors.green,)
                  ],
                );
              } else if (state is WifiDisconnectedState) {
                return const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Está Desconectado"),
                    Icon(Icons.wifi_off, color: Colors.red,)
                  ],
                );
              } else {
                return const CircularProgressIndicator();
              }
            }
        ),
      ),
    );
  }
}
