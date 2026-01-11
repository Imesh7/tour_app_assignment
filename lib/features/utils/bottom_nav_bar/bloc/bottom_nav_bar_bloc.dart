import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
part 'bottom_nav_bar_event.dart';
part 'bottom_nav_bar_state.dart';

class BottomNavBarBloc extends Bloc<BottomNavBarEvent, BottomNavBarState> {
  BottomNavBarBloc() : super(BottomNavBarInitial()) {
    on<OnTapBottomNavBarItemEvent>(onTapBottomNavBarItem);
  }

  int currentIndex = 0;

  void onTapBottomNavBarItem(event, emit) async {
    final index = (event as OnTapBottomNavBarItemEvent).index;
    currentIndex = index;
    emit(BottomNavBarItemChangedState(currentIndex: currentIndex));
  }
}
