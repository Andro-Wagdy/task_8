part of 'fast_filter_bar_cubit.dart';

@immutable
sealed class FastFilterBarState {}

final class FastFilterBarInitial extends FastFilterBarState {}
final class ChangeColor extends FastFilterBarState {}

