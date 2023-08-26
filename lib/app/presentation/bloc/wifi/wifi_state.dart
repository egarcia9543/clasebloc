part of 'wifi_bloc.dart';

@immutable
abstract class WifiState {}

class WifiInitial extends WifiState {}

class WifiConnectedState extends WifiState {}

class WifiDisconnectedState extends WifiState {}
