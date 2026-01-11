part of 'bottom_nav_bar_bloc.dart';

sealed class BottomNavBarState extends Equatable {
  const BottomNavBarState();
  
  @override
  List<Object> get props => [];
}

final class BottomNavBarInitial extends BottomNavBarState {}

final class BottomNavBarItemChangedState extends BottomNavBarState {
  final int currentIndex;
  const BottomNavBarItemChangedState({required this.currentIndex});

  @override
  List<Object> get props => [currentIndex];
}