part of 'wifi_bloc.dart';

@immutable
abstract class WifiEvent {}

class WifiConnectedEvent extends WifiEvent {}

class WifiDisconnectedEvent extends WifiEvent {}
